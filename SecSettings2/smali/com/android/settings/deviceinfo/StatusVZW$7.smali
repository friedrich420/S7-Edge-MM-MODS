.class Lcom/android/settings/deviceinfo/StatusVZW$7;
.super Landroid/os/Handler;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 506
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 510
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    check-cast v2, [B

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1402([B)[B

    .line 512
    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1502(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 519
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->NAI_length:I
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1602(Lcom/android/settings/deviceinfo/StatusVZW;I)I

    .line 520
    const/4 v1, 0x1

    .line 524
    .local v1, "offset":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    const-string v3, ""

    # setter for: Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1702(Lcom/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->NAI_length:I
    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1600(Lcom/android/settings/deviceinfo/StatusVZW;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->buf:[B
    invoke-static {}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1400()[B

    move-result-object v3

    add-int v4, v0, v1

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1784(Lcom/android/settings/deviceinfo/StatusVZW;Ljava/lang/Object;)Ljava/lang/String;

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 530
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1700(Lcom/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1700(Lcom/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1500(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "<Not set>"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 533
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1500(Lcom/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusVZW$7;->this$0:Lcom/android/settings/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/StatusVZW;->access$1700(Lcom/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method
