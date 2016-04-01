.class Landroid/service/voice/VoiceInteractionSession$2$1;
.super Ljava/lang/Thread;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession$2;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/voice/VoiceInteractionSession$2;

.field final synthetic val$content:Landroid/app/assist/AssistContent;

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$structure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession$2;Ljava/lang/String;Landroid/app/assist/AssistStructure;Landroid/os/Bundle;Landroid/app/assist/AssistContent;)V
    .registers 6
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iput-object p3, p0, val$structure:Landroid/app/assist/AssistStructure;

    iput-object p4, p0, val$data:Landroid/os/Bundle;

    iput-object p5, p0, val$content:Landroid/app/assist/AssistContent;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 232
    const/4 v4, 0x0

    .line 233
    .local v4, "failure":Ljava/lang/Throwable;
    iget-object v0, p0, val$structure:Landroid/app/assist/AssistStructure;

    if-eqz v0, :cond_a

    .line 235
    :try_start_5
    iget-object v0, p0, val$structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureData()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_28

    .line 241
    :cond_a
    :goto_a
    iget-object v0, p0, this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v7, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x68

    iget-object v2, p0, val$data:Landroid/os/Bundle;

    if-nez v4, :cond_32

    iget-object v3, p0, val$structure:Landroid/app/assist/AssistStructure;

    :goto_1e
    iget-object v5, p0, val$content:Landroid/app/assist/AssistContent;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 243
    return-void

    .line 236
    :catch_28
    move-exception v6

    .line 237
    .local v6, "e":Ljava/lang/Throwable;
    const-string v0, "VoiceInteractionSession"

    const-string v1, "Failure retrieving AssistStructure"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    move-object v4, v6

    goto :goto_a

    .line 241
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_32
    const/4 v3, 0x0

    goto :goto_1e
.end method
