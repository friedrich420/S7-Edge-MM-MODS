.class public interface abstract Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;
.super Ljava/lang/Object;
.source "KeyguardSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneStatusBarCallback"
.end annotation


# virtual methods
.method public abstract getBarStatus()I
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract makeExpandedInvisible()V
.end method

.method public abstract onAffordanceTap()V
.end method

.method public abstract setSwipedFraction(F)V
.end method

.method public abstract userActivity()V
.end method
