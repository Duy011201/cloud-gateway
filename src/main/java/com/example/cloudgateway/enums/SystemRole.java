package com.example.cloudgateway.enums;

public enum SystemRole {
    ROLE_ADMIN,
    ROLE_CANDIDATE,
    ROLE_EMPLOYER;

    public static boolean isRole(String role) {
        try {
            SystemRole.valueOf(role);
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }
}
