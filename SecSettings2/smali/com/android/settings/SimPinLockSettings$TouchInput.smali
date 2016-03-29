.class Lcom/android/settings/SimPinLockSettings$TouchInput;
.super Ljava/lang/Object;
.source "SimPinLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/SimPinLockSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SimPinLockSettings;)V
    .locals 2

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const v0, 0x7f0d0206

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    .line 512
    const v0, 0x7f0d01fd

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    .line 513
    const v0, 0x7f0d01fe

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 514
    const v0, 0x7f0d01ff

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    .line 515
    const v0, 0x7f0d0200

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    .line 516
    const v0, 0x7f0d0201

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    .line 517
    const v0, 0x7f0d0202

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    .line 518
    const v0, 0x7f0d0203

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 519
    const v0, 0x7f0d0204

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    .line 520
    const v0, 0x7f0d0205

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    .line 521
    const v0, 0x7f0d00ee

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 523
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SimPinLockSettings;Lcom/android/settings/SimPinLockSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SimPinLockSettings;
    .param p2, "x1"    # Lcom/android/settings/SimPinLockSettings$1;

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPinLockSettings;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 559
    const/4 v0, -0x1

    .line 560
    .local v0, "digit":I
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 561
    const/4 v0, 0x0

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 563
    const/4 v0, 0x1

    goto :goto_0

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 565
    const/4 v0, 0x2

    goto :goto_0

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 567
    const/4 v0, 0x3

    goto :goto_0

    .line 568
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 569
    const/4 v0, 0x4

    goto :goto_0

    .line 570
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 571
    const/4 v0, 0x5

    goto :goto_0

    .line 572
    :cond_6
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 573
    const/4 v0, 0x6

    goto :goto_0

    .line 574
    :cond_7
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 575
    const/4 v0, 0x7

    goto :goto_0

    .line 576
    :cond_8
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 577
    const/16 v0, 0x8

    goto :goto_0

    .line 578
    :cond_9
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 579
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/SimPinLockSettings;->finish()V

    .line 552
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 553
    .local v0, "digit":I
    if-ltz v0, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPinLockSettings;

    # invokes: Lcom/android/settings/SimPinLockSettings;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/settings/SimPinLockSettings;->access$400(Lcom/android/settings/SimPinLockSettings;I)V

    .line 556
    :cond_1
    return-void
.end method
