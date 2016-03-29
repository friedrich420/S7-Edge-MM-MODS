.class Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZenRuleInfo"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field rule:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/ZenModeAutomationSettings$1;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;-><init>()V

    return-void
.end method
