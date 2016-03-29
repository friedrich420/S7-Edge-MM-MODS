.class public abstract Lcom/android/systemui/qs/SystemSetting;
.super Landroid/database/ContentObserver;
.source "SystemSetting.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# static fields
.field private static final DEFAULT:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListening:Z

.field private mObservedValue:I

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/SystemSetting;->mObservedValue:I

    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    .line 46
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    .line 47
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    .line 74
    .local v0, "value":I
    iget v1, p0, Lcom/android/systemui/qs/SystemSetting;->mObservedValue:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SystemSetting;->handleValueChanged(IZ)V

    .line 75
    iput v0, p0, Lcom/android/systemui/qs/SystemSetting;->mObservedValue:I

    .line 76
    return-void

    .line 74
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/qs/SystemSetting;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SystemSetting;->mListening:Z

    .line 61
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SystemSetting;->mObservedValue:I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    iput v3, p0, Lcom/android/systemui/qs/SystemSetting;->mObservedValue:I

    goto :goto_0
.end method

.method public setUserId(I)V
    .locals 2
    .param p1, "mNewUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    iput p1, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/qs/SystemSetting;->mListening:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 55
    return-void
.end method
