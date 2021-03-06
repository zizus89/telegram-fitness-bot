require_relative 'programs'
include WorkoutProgramForWoman

module ProgramsForWomans
  def low_level
    "\n1 день.
    Приседания на лавку 3х10
    Ягодичный мостик на двух ногах 3х15
    Отведение бедра сидя в тренажере 3х10
    Приведение бдра сидя в тренажере 3х10
  2 день.
    Отжимания от перекладины 3х5
    Тяга горизонтального блока 3х10
    Жим вертикальный с гантелями 3х10
    Вертикальная тяга блока 3х10
  3 день.
    Сгибание голени в тренажере 3х10
    Разгибание голени в тренажере 3х10
    Армейские прыжки 3х10
    Подъемы на икры 3х15
    "
  end

  def middle_level
    WorkoutProgramForWoman.pr
  end

  def high_level
    "\n1 день.
    Присед со штангой 3х15
    Разгибание голени 3х15
    Приведение бедра 3х15
    Жим горизонтальный 3х15
    Жим вертикальный 3х15
    Отведение бедра 3х15
  2 день.
    Становая тяга 4х10
    Сгибание голени 4х10
    Отведение бедра 4х10
    Тяга вертикальная 4х10
    Тяга горизонтальная 4х10
    Сгибание предплечья 4х10
  3 день.
    Выпады с гантелями 5х10(шагов)
    Зашагивания на тумбу с гантельями 5х10
    Подъем на носки 5х20
    Отведение плеча 5х10
    Подъемы на носки 5х10"
  end

  # def choice_day_for_woman
  #   {
  #     'Тренировка 1' => day_1,
  #     'Тренировка 2' => day_2,
  #     'Тренировка 3' => day_3,
  #     'Тренировка 4' => day_4,
  #     'Тренировка 5' => day_5,
  #     'Тренировка 6' => day_6
  #   }
  # end

  def choice_pr_lvl_for_woman
    {
      'Тренировки для девушек. Начальный уровень' => low_level,
      'Тренировки для девушек. Средний уровень' => middle_level,
      'Тренировки для девушек. Продвинутый уровень' => high_level
    }
  end
end
