.class public Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingAssistExtras"
.end annotation


# instance fields
.field public final activity:Lcom/android/server/am/ActivityRecord;

.field public content:Landroid/app/assist/AssistContent;

.field public final extras:Landroid/os/Bundle;

.field public haveResult:Z

.field public final hint:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public final receiver:Lcom/android/internal/os/IResultReceiver;

.field public result:Landroid/os/Bundle;

.field public structure:Landroid/app/assist/AssistStructure;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;I)V
    .registers 10
    .param p2, "_activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_extras"    # Landroid/os/Bundle;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_hint"    # Ljava/lang/String;
    .param p6, "_receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p7, "_userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 982
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, haveResult:Z

    .line 978
    iput-object v1, p0, result:Landroid/os/Bundle;

    .line 979
    iput-object v1, p0, structure:Landroid/app/assist/AssistStructure;

    .line 980
    iput-object v1, p0, content:Landroid/app/assist/AssistContent;

    .line 983
    iput-object p2, p0, activity:Lcom/android/server/am/ActivityRecord;

    .line 984
    iput-object p3, p0, extras:Landroid/os/Bundle;

    .line 985
    iput-object p4, p0, intent:Landroid/content/Intent;

    .line 986
    iput-object p5, p0, hint:Ljava/lang/String;

    .line 987
    iput-object p6, p0, receiver:Lcom/android/internal/os/IResultReceiver;

    .line 988
    iput p7, p0, userHandle:I

    .line 989
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 992
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAssistContextExtras failed: timeout retrieving from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    monitor-enter p0

    .line 994
    const/4 v0, 0x1

    :try_start_1d
    iput-boolean v0, p0, haveResult:Z

    .line 995
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 996
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_29

    .line 997
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;)V

    .line 998
    return-void

    .line 996
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method
