#include <iostream>
#include cstdint>

// demonstrate crc32 without a table, bit by bit
uint32_t brute_force_crc32(char msg[], uint32_t len) {
    uint32_t polynomial = 0xEDB88320;
    uint32_t crc = 0xFFFFFFFF;

    for (uint32_t i = 0; i < len; i++) {
        uint8_t byte = msg[i];
        crc ^= byte;

        for (uint32_t j = 0; j < 8; j++) {
            if (crc & 1) {
                crc = (crc >> 1) ^ polynomial;
            } else {
                crc >>= 1;
            }
        }
    }

    return ~crc;
}


uint32_t crc32(char msg[], uint32_t len) {
    uint32_t polynomial = 0xEDB88320;
    uint32_t crc_table[256];

    // Generate CRC table
    for (uint32_t i = 0; i < 256; i++) {
        uint32_t crc = i;
        for (uint32_t j = 8; j > 0; j--) {
            if (crc & 1) {
                crc = (crc >> 1) ^ polynomial;
            } else {
                crc >>= 1;
            }
        }
        crc_table[i] = crc;
    }

    // Calculate CRC
    uint32_t crc = 0xFFFFFFFF;
    for (uint32_t i = 0; i < len; i++) {
        uint8_t byte = msg[i];
        uint32_t index = (crc ^ byte) & 0xFF;
        crc = (crc >> 8) ^ crc_table[index];
    }

    return ~crc;
}