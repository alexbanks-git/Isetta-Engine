// "Copyright [2018] Isetta"

#pragma once

#include <random>
//#include "ISETTA_API.h"

namespace Isetta::Math {

class RandomGeneratorInt {
  friend class Random;
  std::mt19937_64 gen;
  std::uniform_int_distribution<int> dis;
  RandomGeneratorInt(int start, int end)
      : gen{std::random_device{}()},
		dis{(start, end)} {}
  RandomGeneratorInt(int start, int end, int seed)
      : gen{seed},
		dis{(start, end)} {}

 public:
  /**
   * \brief Get next random value
   */
  int GetValue() { return dis(gen); }
};

class RandomGenerator {
  friend class Random;
  std::mt19937_64 gen;
  std::uniform_real_distribution<float> dis;
  RandomGenerator(float start, float end)
      : gen{std::random_device{}()},
        dis{(start, end)} {}
  RandomGenerator(float start, float end, int seed)
      : gen{seed},
        dis{(start, end)} {}

 public:
  /**
   * \brief Get next random value
   */
  float GetValue() { return dis(gen); }
};

class  Random {
 public:
  /**
   * \brief Get a random generator that generates number in range [start, end)
   * \param start Start number
   * \param end End number
   */
  static RandomGeneratorInt GetRandomGenerator(int start, int end);
  /**
   * \brief Get a random generator with a specific seed that generates number in
   * range [start, end)
   * \param start Start number
   * \param end End number
   * \param seed Specific seed
   */
  static RandomGeneratorInt GetRandomGenerator(int start, int end, int seed);
  /**
   * \brief Get a random generator that generates number in range [start, end)
   * \param start Start number
   * \param end End number
   */
  static RandomGenerator GetRandomGenerator(float start, float end);
  /**
   * \brief Get a random generator with a specific seed that generates number in
   * range [start, end)
   * \param start Start number
   * \param end End number
   * \param seed Specific seed
   */
  static RandomGenerator GetRandomGenerator(float start, float end, int seed);
  /**
   * \brief Use a default random generator to generate a random number in [0, 1)
   */
  static float GetRandom01();

 private:
  static RandomGenerator randomFloatGen;
};
}  // namespace Isetta::Math
