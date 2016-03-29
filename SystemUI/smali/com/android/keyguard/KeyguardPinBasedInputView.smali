.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mCurrentMobileKeyboard:I

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mKeyboardEntry:Landroid/widget/TextView;

.field private mKeyboardView:Landroid/widget/LinearLayout;

.field private mLeftArrowImage:Landroid/widget/ImageButton;

.field private mMaxLength:I

.field private mNumpadkeyView:Landroid/widget/LinearLayout;

.field private mOkButton:Landroid/view/View;

.field private mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

.field private mRightArrowImage:Landroid/widget/ImageButton;

.field private mRightPressed:Z

.field private mSecPinArea:Landroid/view/View;

.field private final mShowImeAtScreenOn:Z

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    .line 553
    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$8;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    .line 633
    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$9;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 104
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeAtScreenOn:Z

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPinBasedInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPinBasedInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->movePinLock(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private chooseKeyboardType()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 185
    sget v1, Lcom/android/keyguard/R$id;->keyboard_container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    .line 186
    sget v1, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    .line 187
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 194
    sget v1, Lcom/android/keyguard/R$id;->keyboard_enrty:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 297
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPinViewColor()V

    .line 298
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/PasswordTextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 217
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/PasswordTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iget v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMaxLength:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextView;->setMaxLength(I)V

    .line 222
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/PasswordTextView;->setSelected(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 236
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 251
    :cond_3
    :try_start_0
    sget v1, Lcom/android/keyguard/R$id;->delete_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$5;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$6;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 276
    sget v1, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    .line 277
    sget v1, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    .line 278
    sget v1, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    .line 279
    sget v1, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    .line 280
    sget v1, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    .line 281
    sget v1, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    .line 282
    sget v1, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    .line 283
    sget v1, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    .line 284
    sget v1, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    .line 285
    sget v1, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    .line 287
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 290
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$drawable;->ripple_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 291
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$drawable;->ripple_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 292
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 293
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    sget v1, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    goto/16 :goto_1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardPinBasedInputView"

    const-string v2, "Exception at adding delete button!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private initOnehandPINView()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isOnehandMode(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 572
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->onehand_left_arrow_pin:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    .line 573
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_left_handed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 578
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->onehand_right_arrow_pin:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    .line 579
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_right_handed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 584
    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->onehand_numpadkey_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    goto :goto_0
.end method

.method private movePinLock(Z)V
    .locals 4
    .param p1, "isRightPressed"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 608
    if-eqz p1, :cond_3

    .line 609
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 614
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800005

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 615
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 616
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pin_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 617
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 620
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 621
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 623
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 624
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 625
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 626
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pin_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 627
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 628
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 418
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    .line 453
    :goto_0
    return-void

    .line 423
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 426
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 429
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 432
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 435
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 438
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 441
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 444
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 447
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 450
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ripple"    # Landroid/graphics/drawable/RippleDrawable;

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 540
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 544
    .local v1, "cy":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->num_pad_ripple_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 546
    .local v2, "rad":I
    if-eqz p2, :cond_0

    instance-of v3, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    .line 547
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 549
    :cond_0
    return-void
.end method


# virtual methods
.method protected getEntryTextview()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 171
    sget v0, Lcom/android/keyguard/R$id;->keyboard_enrty:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const-string v1, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    .line 180
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    goto :goto_0
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 401
    packed-switch p1, :pswitch_data_0

    .line 412
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 403
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    sget v0, Lcom/android/keyguard/R$string;->kg_fingerprints_pin_unabled_instructions:I

    goto :goto_0

    .line 406
    :cond_0
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_restart_pin:I

    goto :goto_0

    .line 408
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$string;->kg_strong_auth_prompt_reason_timeout_pin:I

    goto :goto_0

    .line 410
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_timeout_pin:I

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPinViewColor()V

    .line 118
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->chooseKeyboardType()V

    .line 121
    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    .line 122
    const-string v0, "KeyguardPinBasedInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigurationChange mCurrentMobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    if-ne v0, v3, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 303
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->verifyPasswordAndUnlock()V

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->chooseKeyboardType()V

    .line 483
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 487
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->initOnehandPINView()V

    .line 488
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOnehandPINView()V

    .line 492
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$7;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 512
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 516
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x13

    if-eq p2, v0, :cond_0

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    const/16 v0, 0x19

    if-eq p2, v0, :cond_0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3f7

    if-eq p2, v0, :cond_0

    .line 520
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 521
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x90

    const/16 v5, 0x10

    const/4 v0, 0x7

    const/4 v3, 0x1

    .line 379
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    move v2, v3

    .line 396
    :goto_0
    return v2

    .line 382
    :cond_0
    const/16 v4, 0x43

    if-ne p1, v4, :cond_1

    .line 383
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    move v2, v3

    .line 384
    goto :goto_0

    .line 388
    :cond_1
    if-lt p1, v0, :cond_2

    if-le p1, v5, :cond_3

    :cond_2
    if-lt p1, v2, :cond_5

    const/16 v4, 0x99

    if-gt p1, v4, :cond_5

    .line 390
    :cond_3
    if-lt p1, v0, :cond_4

    if-gt p1, v5, :cond_4

    .line 392
    .local v0, "basedKeyCode":I
    :goto_1
    sub-int v1, p1, v0

    .line 393
    .local v1, "number":I
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    move v2, v3

    .line 394
    goto :goto_0

    .end local v0    # "basedKeyCode":I
    .end local v1    # "number":I
    :cond_4
    move v0, v2

    .line 390
    goto :goto_1

    .line 396
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 529
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onMeasure(II)V

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->measureChildren(II)V

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    .line 534
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    .line 536
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 163
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 165
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 142
    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 316
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 317
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    .line 331
    :cond_0
    return-void
.end method

.method protected setInputViewVisible(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_2

    .line 364
    if-eqz p1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 369
    :cond_2
    if-eqz p1, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setMaxLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMaxLength:I

    .line 458
    return-void
.end method

.method public setOnehandPINView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 588
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v3, v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isOnehandMode(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 590
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 591
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 593
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 594
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 595
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 596
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 597
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 598
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 601
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_direction"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    .line 603
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->movePinLock(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 601
    goto :goto_1
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 335
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 336
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setInputViewVisible(Z)V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setInputViewVisible(Z)V

    goto :goto_0
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 350
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected setPinViewColor()V
    .locals 6

    .prologue
    .line 644
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 645
    .local v0, "isThemeApplied":Z
    if-eqz v0, :cond_3

    .line 646
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    sget v2, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 663
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$drawable;->ripple_drawable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 664
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 666
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 668
    :cond_1
    return-void

    .line 650
    :cond_2
    sget v2, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 651
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 654
    const-string v2, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 656
    .local v1, "numTypeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    .line 657
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 661
    .end local v1    # "numTypeface":Landroid/graphics/Typeface;
    :cond_3
    sget v2, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    goto :goto_0
.end method
