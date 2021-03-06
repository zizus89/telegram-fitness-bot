module ProgramsForMans
  def two_days_split
    "\n1 день.
    Приседания со штангой на плечах 3х10
    Разгибания голени сидя в тренажере 3х15
    Приведение бдра сидя в тренажере 3х10
    Тяга вертикального блока 3х10
    Тяга горизонтального блока 3х10
  2 день.
    Становая тяга 4х10
    Сгибаниыя голени сидя в тренажере 4х10
    Отведения бдра сидя в тренажере 4х15
    Горизонтальный жим штанги 4х10
    Вертикальный жим штанги 4х15"
  end

  def three_days_split
    "\n1 день.
    Приседания со штангой на плечах 3х15
    Разгибания голени сидя в тренажере 3х15
    Приведение бдра сидя в тренажере 3х15
    Горизонтальный жим штанги 3х15
    Вертикальный жим штанги 3х15
    Разгибание предплечья 3х15
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

  def four_days_split
    "\n1 день.
    Приседания со штангой на плечах 3х15
    Разгибания голени сидя в тренажере 3х15
    Приведение бдра сидя в тренажере 3х15
    Выпады с гантелями в руках 3х20(шагов)
  2 день.
    Горизонтальный жим штанги 3х15
    Вертикальный жим штанги 3х15
    Тяга вертикального блока 3х15
    Тяга горизонтального блока 3х15
  3 день.
    Становая тяга 4х10
    Сгибаниыя голени сидя в тренажере 4х10
    Отведения бдра сидя в тренажере 4х15
    Ягодичный мостик на 1й ноге 4х15
  4 день.
    Горизонтальный жим штанги 4х10
    Вертикальный жим штанги 4х10
    Тяга вертикального блока 4х10
    Тяга горизонтального блока 410"
  end

  def choice_program_for_man
    {
      'Тренировки 2 раза в неделю для мужчин' => two_days_split,
      'Тренировки 3 раза в неделю для мужчин' => three_days_split,
      'Тренировки 4 раза в неделю для мужчин' => four_days_split
    }
  end
end
