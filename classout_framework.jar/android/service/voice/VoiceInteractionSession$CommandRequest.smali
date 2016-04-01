.class public final Landroid/service/voice/VoiceInteractionSession$CommandRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandRequest"
.end annotation


# instance fields
.field final mCommand:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "command"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 699
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    .line 700
    iput-object p5, p0, mCommand:Ljava/lang/String;

    .line 701
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 744
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 745
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCommand="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, mCommand:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, mCommand:Ljava/lang/String;

    return-object v0
.end method

.method sendCommandResult(ZLandroid/os/Bundle;)V
    .registers 5
    .param p1, "finished"    # Z
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 715
    if-eqz p1, :cond_5

    .line 716
    :try_start_2
    invoke-virtual {p0}, finishRequest()V

    .line 718
    :cond_5
    iget-object v0, p0, mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 721
    :goto_c
    return-void

    .line 719
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public sendIntermediateResult(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, sendCommandResult(ZLandroid/os/Bundle;)V

    .line 731
    return-void
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 740
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, sendCommandResult(ZLandroid/os/Bundle;)V

    .line 741
    return-void
.end method
