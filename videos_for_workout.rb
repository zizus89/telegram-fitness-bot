# videos in links for exercises 

module Exercises
  def kettlebell_swings
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'махи гири|гантели|блина', url: 'https://youtu.be/dZKPJhVbcTw')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def horizontal_pull
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'горизонтальная тяга', url: 'https://youtu.be/0-PzqaAb_ls')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def vertical_pull
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'вертикальная тяга', url: 'https://youtu.be/gSFc9eU6wH4')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def push_up
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'отжимания', url: 'https://youtu.be/aAh8XmiwV4g')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def push_horizontal
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'жим горизонтальный', url: 'https://youtu.be/XUeE5cTzsfo')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def hip_abduction
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'отведение бедра', url: 'https://youtu.be/Er3jBZd_NQA')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def thrusters
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'приседания с жимом гантелей', url: 'https://youtu.be/bvLIuwPySSI')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def one_leg_deadlift_and_horizomtal_pull
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'становая тяга на одной ноге', url: 'https://youtu.be/GqZbUOAFbgo')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def hip_adduction
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'приведение бедра сидя', url: 'https://youtu.be/TGW_c-9XVYQ')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def king_one_leg_deadlift
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'тяга Кинга', url: 'https://youtu.be/-6cpYZ-PW5Y')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def shin_extension
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'разгибание голени', url: 'https://youtu.be/IEM5z5OQ-mo')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def shin_flexion
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'cгибание голени', url: 'https://youtu.be/Dz1XFU3WSbQ')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end

  def push_platform_one_leg
    kb = [Telegram::Bot::Types::InlineKeyboardButton.new(text: 'жим платформы одной ногой', url: 'https://youtu.be/LL0uQJthemo')]
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
  end
end
