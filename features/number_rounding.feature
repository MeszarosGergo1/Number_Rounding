Feature: Szám kerekítése
  Mint felhasználó
  Szeretnék kerekíteni egy számot egy adott tizedesjegyre
  Hogy pontosabb számításokat végezhessek

  Scenario Outline: rounding numbers
    Given the number is <number>
    And the number of decimals is <decimals>
    When I round the number
    Then the result should be <result> 
  Examples:
  | number | decimals | result | 
  | 3.7    |    0     |   4    |
  | 3.2    |    0     |   3    |
  | 3.45   |    1     |   3.5  |
  | 3.456  |    2     |   3.46 |
  | 3.5    |    0     |   4    |
  | -3.7   |    0     |   -4   |
  | -3.2   |    0     |   -3   |
