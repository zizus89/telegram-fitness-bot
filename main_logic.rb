# all requires

require_relative 'programs'
include WorkoutProgramForWoman

require_relative 'starting_salutation'
include StartDesc

require_relative 'man_programs'
include ProgramsForMans

require_relative 'woman_programs'
include ProgramsForWomans

require_relative 'exercises_and_videos'
include ExercisesEndVideos

# main code ligic

class MainLogic
  TOKEN = '5224419221:AAHniEDCkj2hEm9VzbS0Uzsx1rTQnfQO548'.freeze

  loop do
    begin
      Telegram::Bot::Client.run(TOKEN) do |bot|
        bot.listen do |message|
          case message.to_s
          when /\/start/i
            bot.api.send_message(chat_id: message.chat.id, text: StartDesc.desc_text)
          when /\A\sbye|\A\sпока|\A\sдосвидания|\A\sвсего доброго|\A\sстоп|\A\sstop/i
            bot.api.send_message(chat_id: message.chat.id, text: "Всего доброго, #{message.from.first_name}!")
          when /\A\sпривет|\A\sку|\A\sхай|\A\shi|\A\shello/i
            answers_gender =
              Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: ['Для мужчин', 'Для девушек'], one_time_keyboard: true)
            bot.api.send_message(
              chat_id: message.chat.id,
              text: "Привет, #{message.from.first_name}! Какая программа нужна?",
              reply_markup: answers_gender
            )
          # для мужчин
          when /\Aдля мужчин/i
            answer_program =
              Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: ['Тренировки 2 раза в неделю для мужчин', 'Тренировки 3 раза в неделю для мужчин',
              'Тренировки 4 раза в неделю для мужчин'], one_time_keyboard: true)
            bot.api.send_message(
              chat_id: message.chat.id,
              text: "#{message.from.first_name} выбери программу",
              reply_markup: answer_program
            )

          # выбранная программа для мужчин
          when /\AТренировки.*мужчин/i
            ch_pr = choice_program_for_man.map { |key, value| value if key[message.to_s] }.compact
            bot.api.send_message(chat_id: message.chat.id, text: ch_pr.join)
          # для женщин
          when /\Aдля девушек/i
            answer_program =
              Telegram::Bot::Types::ReplyKeyboardMarkup
                .new(keyboard: ['Тренировки для девушек. Начальный уровень', 'Тренировки для девушек. Средний уровень',
                'Тренировки для девушек. Продвинутый уровень'], one_time_keyboard: true)
              bot.api.send_message(
                chat_id: message.chat.id,
                text: "#{message.from.first_name} выбери программу программу по уровню",
                reply_markup: answer_program
              )
          # выбранная программа для женщин
          # when /\AТренировки для девушек.*/i
          #   ch_pr_lvl = choice_pr_lvl_for_woman.map { |key, value| value if key[message.to_s] }.compact
          #   bot.api.send_message(chat_id: message.chat.id, text: ch_pr_lvl.join)

          when /\AТренировки для девушек. Начальный уровень/i
            ch_pr_lvl = choice_pr_lvl_for_woman.map { |key, value| value if key[message.to_s] }.compact
            bot.api.send_message(chat_id: message.chat.id, text: ch_pr_lvl.join)
          when /\AТренировки для девушек. Средний уровень/i
            ch_pr_lvl = choice_pr_lvl_for_woman.map { |key, value| value if key[message.to_s] }.compact
            bot.api.send_message(chat_id: message.chat.id, text: ch_pr_lvl.join)
          when /\AТренировки для девушек. Продвинутый уровень/i
            ch_pr_lvl = choice_pr_lvl_for_woman.map { |key, value| value if key[message.to_s] }.compact
            bot.api.send_message(chat_id: message.chat.id, text: ch_pr_lvl.join)

          # выбранный тренировочный день
          # when /\AТренировка 1/i
          #   ch_day = choice_day_for_woman.map { |key, value| value if key[message.to_s] }.compact
          #   bot.api.send_message(chat_id: message.chat.id, text: ch_day.join)

          # упражнения и видео
          when /упражнение|как делать?/i
            answer_exercises =
              Telegram::Bot::Types::ReplyKeyboardMarkup
              .new(keyboard: ['махи гири', 'горизонтальная тяга', 'вертикальная тяга', 'отжимания',
              'горизонтальный жим', 'отведение бедра', 'приседаниея с вертикальным жимом гантелей',
              'тяга кинга', 'становая тяга на одной ноге', 'приведение бедра', 'разгибания голени',
              'cгибания голени', 'жим платформы одной ногой'], one_time_keyboard: true)
            bot.api.send_message(
              chat_id: message.chat.id,
              text: "#{message.from.first_name} выбери упражнение.",
              reply_markup: answer_exercises
            )

          when message.to_s
            ch_ex = choice_exercises.map { |key, value| value if key[message.to_s] }.compact
            if ch_ex.empty?
              bot.api.send_message(chat_id: message.chat.id, text: "Unknown request")
            else
              bot.api.send_message(chat_id: message.chat.id, text: ch_ex.join)
            end
          end
        end
      end
    end
  end
end
