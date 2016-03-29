.class Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;
.super Ljava/lang/Object;
.source "KeyguardBackupRestoreManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardBackupRestoreManager$1;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$securityLevel:I

.field final synthetic val$sessiontime:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBackupRestoreManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->this$1:Lcom/android/keyguard/KeyguardBackupRestoreManager$1;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$saveKey:Ljava/lang/String;

    iput p5, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$securityLevel:I

    iput-object p6, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$sessiontime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->this$1:Lcom/android/keyguard/KeyguardBackupRestoreManager$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$source:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$saveKey:Ljava/lang/String;

    iget v5, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$securityLevel:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$sessiontime:Ljava/lang/String;

    # invokes: Lcom/android/keyguard/KeyguardBackupRestoreManager;->launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->access$200(Lcom/android/keyguard/KeyguardBackupRestoreManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    return-void
.end method
