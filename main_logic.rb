# main logic for application

require_relative 'videos_for_workout'
include Exercises

class MainLogic
  TOKEN = '5224419221:AAHniEDCkj2hEm9VzbS0Uzsx1rTQnfQO548'.freeze

  loop do
    begin
      Telegram::Bot::Client.run(TOKEN) do |bot|
        bot.listen do |message|
          case message.to_s
          when /\/start/i
            bot.api.send_message(chat_id: message.chat.id, text: StartDesc.desc_text)
          when /\A\s*привет.*|\A\s*старт.*|\A\s*start.*|\A\s*hi.*/i
            bot.api.send_message(chat_id: message.chat.id, text: "Привет, #{message.from.first_name}! Какая тренировка сегодня?")
          when /\A\s*bye.*|\A\s*пока.*|\A\s*досвидания.*|\A\s*всего доброго.*|\A\s*стоп.*|\A\s*stop.*/i
            bot.api.send_message(chat_id: message.chat.id, text: "Всего доброго, #{message.from.first_name}!")
          when /\A\s*тренировка 1,*|\A\s*треня 1.*|\A\s*тренька 1.*|\A\s*мучение 1.*/i
            bot.api.send_message(chat_id: message.chat.id, text: WorkoutProgram.program_1)
          when /\A\s*тренировка 2.*|\A\s*треня 2.*|\A\s*тренька 2.*|\A\s*мучение 2.*/i
            bot.api.send_message(chat_id: message.chat.id, text: WorkoutProgram.program_2)
          when /\A\s*тренировка 3.*|\A\s*треня 3.*|\A\s*тренька 3.*|\A\s*мучение 3.*/i
            bot.api.send_message(chat_id: message.chat.id, text: WorkoutProgram.program_3)
          when /\A\s*тренировка 4.*|\A\s*треня 4.*|\A\s*тренька 4.*|\A\s*мучение 4.*/i
            bot.api.send_message(chat_id: message.chat.id, text: WorkoutProgram.program_4)
          when /\A\s*тренировка 5.*|\A\s*треня 5.*|\A\s*тренька 5.*|\A\s*мучение 5.*/i
            bot.api.send_message(chat_id: message.chat.id, text: WorkoutProgram.program_5)
          when /\A\s*тренировка 6.*|\A\s*треня 6.*|\A\s*тренька 6.*|\A\s*мучение 6.*/i
            bot.api.send_message(chat_id: message.chat.id, text: WorkoutProgram.program_6)
          when /махи (гири|гантели|блина)/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.kettlebell_swings)
          when /горизонтальная тяга|тяга горизонтальная/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.horizontal_pull)
          when /вертикальная тяга|тяга вертикальная/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.vertical_pull)
          when /отжимани(е|я)/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.push_up)
          when /жим горизонтальный|горизонтальный жим/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.push_horizontal)
          when /отведени(е|я) бедра/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.hip_abduction)
          when /приседани(е|я) с жимом гантелей|Присед с вертикальным жимом гантель/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.thrusters)
          when /тяга кинга/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.king_one_leg_deadlift)
          when /становая тяга на одной ноге/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.one_leg_deadlift_and_horizomtal_pull)
          when /приведени(е|я) бедра/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.hip_adduction)
          when /разгибани(е|я) голени/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.shin_extension)
          when /cгибани(е|я) голени/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.shin_flexion)
          when /жим платформы одной ногой/i
            bot.api.send_message(chat_id: message.chat.id, text: 'правильное выполнение ↓', reply_markup: Exercises.push_platform_one_leg)
          end
        end
      end
    end
  end
end
