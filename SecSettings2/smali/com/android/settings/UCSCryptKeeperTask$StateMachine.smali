.class public Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method public constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PUK:I

    .line 315
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PIN:I

    .line 316
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->CONFIRM_PIN:I

    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->DONE:I

    .line 318
    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return v0
.end method

.method public next()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v2, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    const/4 v3, 0x0

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$200(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 323
    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    iput v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 326
    const v0, 0x7f0e1706

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    .line 353
    :goto_1
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 359
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    :cond_1
    return-void

    .line 328
    :cond_2
    const v0, 0x7f0e16fb

    goto :goto_0

    .line 331
    :cond_3
    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v1, v4, :cond_5

    .line 332
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    iput v5, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 334
    const v0, 0x7f0e1705

    .line 338
    :goto_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1

    .line 336
    :cond_4
    const v0, 0x7f0e16fc

    goto :goto_2

    .line 339
    :cond_5
    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v1, v5, :cond_7

    .line 340
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 341
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 342
    const v0, 0x7f0e16fd

    .line 343
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->unlockUCSPUK()V
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$300(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1

    .line 346
    :cond_6
    iput v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 347
    const v0, 0x7f0e07b9

    .line 348
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 351
    :cond_7
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1
.end method

.method reset()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    .line 375
    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const v1, 0x7f0e1703

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    .line 379
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    .line 384
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 386
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    :cond_1
    return-void
.end method
