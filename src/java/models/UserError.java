/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author ubro3
 */
public class UserError {

    public void setUserIDError(String userIDError) {
        this.userIDError = userIDError;
    }

    public void setFullNameError(String fullNameError) {
        this.fullNameError = fullNameError;
    }

    public void setRoleIDError(String roleIDError) {
        this.roleIDError = roleIDError;
    }

    public void setPasswordError(String passwordError) {
        this.passwordError = passwordError;
    }

    public void setRePasswordError(String rePasswordError) {
        this.rePasswordError = rePasswordError;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getUserIDError() {
        return userIDError;
    }

    public String getFullNameError() {
        return fullNameError;
    }

    public String getRoleIDError() {
        return roleIDError;
    }

    public String getPasswordError() {
        return passwordError;
    }

    public String getRePasswordError() {
        return rePasswordError;
    }

    public String getError() {
        return error;
    }
    String userIDError;
    String fullNameError;
    String roleIDError;
    String passwordError;
    String rePasswordError;
    String error;
    public UserError() {
        this.userIDError = "";
        this.fullNameError = "";
        this.roleIDError = "";
        this.passwordError = "";
        this.rePasswordError = "";
        this.error = "";
    }

    public UserError(String userIDError, String fullNameError, String roleIDError, String passwordError, String rePasswordError, String error) {
        this.userIDError = userIDError;
        this.fullNameError = fullNameError;
        this.roleIDError = roleIDError;
        this.passwordError = passwordError;
        this.rePasswordError = rePasswordError;
        this.error = error;
    }
    
    
}
