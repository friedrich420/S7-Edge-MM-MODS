.class public interface abstract Lcom/android/keyguard/KeyguardSecurityCallback;
.super Ljava/lang/Object;
.source "KeyguardSecurityCallback.java"


# virtual methods
.method public abstract dismiss(Z)V
.end method

.method public abstract getRemainingAttemptsBeforeWipe()I
.end method

.method public abstract isDismissActionExist()Z
.end method

.method public abstract isVerifyUnlockOnly()Z
.end method

.method public abstract reportUnlockAttempt(ZI)V
.end method

.method public abstract reset()V
.end method

.method public abstract showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
.end method

.method public abstract userActivity()V
.end method
