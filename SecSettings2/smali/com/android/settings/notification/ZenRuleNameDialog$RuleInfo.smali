.class public Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleNameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuleInfo"
.end annotation


# instance fields
.field public caption:Ljava/lang/String;

.field public configurationActivity:Landroid/content/ComponentName;

.field public defaultConditionId:Landroid/net/Uri;

.field public serviceComponent:Landroid/content/ComponentName;

.field public settingsAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
