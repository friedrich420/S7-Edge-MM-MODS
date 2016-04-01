.class Lcom/android/server/policy/EnableAccessibilityController$1;
.super Landroid/os/Handler;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/EnableAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/EnableAccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/EnableAccessibilityController;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 76
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_8e

    .line 97
    :goto_7
    return-void

    .line 78
    :pswitch_8
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$100(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_7

    .line 82
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1f
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040501

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$100(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_7

    .line 86
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_36
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v2, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0xfffff

    # invokes: Lcom/android/server/policy/EnableAccessibilityController;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/policy/EnableAccessibilityController;->access$200(Lcom/android/server/policy/EnableAccessibilityController;Landroid/content/Context;I)V

    .line 87
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.app.talkback"

    # invokes: Lcom/android/server/policy/EnableAccessibilityController;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;->access$300(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 88
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v2, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.app.talkback"

    # invokes: Lcom/android/server/policy/EnableAccessibilityController;->turnOnTalkback(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/policy/EnableAccessibilityController;->access$400(Lcom/android/server/policy/EnableAccessibilityController;Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :goto_5f
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$500(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 93
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->access$100(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040500

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_7

    .line 90
    :cond_7f
    iget-object v1, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v2, p0, this$0:Lcom/android/server/policy/EnableAccessibilityController;

    # getter for: Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->access$000(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    # invokes: Lcom/android/server/policy/EnableAccessibilityController;->turnOnTalkback(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/policy/EnableAccessibilityController;->access$400(Lcom/android/server/policy/EnableAccessibilityController;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5f

    .line 76
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1f
        :pswitch_36
    .end packed-switch
.end method
