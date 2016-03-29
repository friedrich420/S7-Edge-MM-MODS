.class final Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Lcom/android/settings/tts/TTSSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TTSSeekBarPreferenceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;Lcom/android/settings/tts/TextToSpeechSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/tts/TextToSpeechSettings;
    .param p2, "x1"    # Lcom/android/settings/tts/TextToSpeechSettings$1;

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    return-void
.end method


# virtual methods
.method public getSpeechRate()I
    .locals 5

    .prologue
    .line 710
    const/4 v1, 0x0

    .line 712
    .local v1, "mProgress":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v2, v2, Lcom/android/settings/tts/TextToSpeechSettings;->rate:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 713
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v3, v3, Lcom/android/settings/tts/TextToSpeechSettings;->rate:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    # getter for: Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    invoke-static {v4}, Lcom/android/settings/tts/TextToSpeechSettings;->access$200(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 714
    move v1, v0

    .line 712
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_1
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProgress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return v1
.end method

.method public setSpeechRateNPlay(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 695
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    iget-object v2, v2, Lcom/android/settings/tts/TextToSpeechSettings;->rate:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    invoke-static {v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->access$202(Lcom/android/settings/tts/TextToSpeechSettings;I)I

    .line 696
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS default rate changed, now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    # getter for: Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    invoke-static {v3}, Lcom/android/settings/tts/TextToSpeechSettings;->access$200(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    # invokes: Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$300(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_rate"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    # getter for: Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    invoke-static {v3}, Lcom/android/settings/tts/TextToSpeechSettings;->access$200(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    # getter for: Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$400(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    # getter for: Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$400(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    # getter for: Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->access$200(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 702
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    # invokes: Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V
    invoke-static {v1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$100(Lcom/android/settings/tts/TextToSpeechSettings;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
