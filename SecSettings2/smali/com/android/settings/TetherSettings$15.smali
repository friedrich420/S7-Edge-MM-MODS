.class Lcom/android/settings/TetherSettings$15;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$mEnable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Z)V
    .locals 0

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    iput-boolean p2, p0, Lcom/android/settings/TetherSettings$15;->val$mEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$700(Lcom/android/settings/TetherSettings;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings$15;->val$mEnable:Z

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->checkWifiPreCondition(Landroid/content/Context;Z)V

    .line 1396
    return-void
.end method
