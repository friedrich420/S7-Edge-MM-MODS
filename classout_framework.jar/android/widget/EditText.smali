.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sKnownAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCfmsService:Landroid/os/CustomFrequencyManager;

.field private mFocused:Z

.field private mKnownAppSipScenario:Z

.field private mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

.field private mSipTextLen:I

.field private mSipTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, sKnownAppList:Ljava/util/HashSet;

    .line 280
    sget-object v0, sKnownAppList:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, sKnownAppList:Ljava/util/HashSet;

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 255
    iput v1, p0, mSipTextLen:I

    .line 257
    iput-boolean v1, p0, mFocused:Z

    .line 259
    new-instance v0, Landroid/widget/EditText$1;

    invoke-direct {v0, p0}, Landroid/widget/EditText$1;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, mSipTextWatcher:Landroid/text/TextWatcher;

    .line 284
    iput-boolean v1, p0, mKnownAppSipScenario:Z

    .line 95
    return-void
.end method

.method static synthetic access$002(Landroid/widget/EditText;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/EditText;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, mSipTextLen:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/EditText;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/EditText;

    .prologue
    .line 70
    invoke-direct {p0}, updateSipFocusStatus()V

    return-void
.end method

.method private updateSipFocusStatus()V
    .registers 5

    .prologue
    .line 289
    iget-boolean v1, p0, mFocused:Z

    if-eqz v1, :cond_2f

    iget v1, p0, mSipTextLen:I

    if-lez v1, :cond_2f

    const/4 v0, 0x1

    .line 290
    .local v0, "current":Z
    :goto_9
    iget-boolean v1, p0, mKnownAppSipScenario:Z

    if-eq v1, v0, :cond_2e

    .line 291
    iput-boolean v0, p0, mKnownAppSipScenario:Z

    .line 292
    iget-object v1, p0, mCfmsService:Landroid/os/CustomFrequencyManager;

    if-nez v1, :cond_21

    .line 293
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CustomFrequencyManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CustomFrequencyManager;

    iput-object v1, p0, mCfmsService:Landroid/os/CustomFrequencyManager;

    .line 295
    :cond_21
    iget-object v2, p0, mCfmsService:Landroid/os/CustomFrequencyManager;

    const-string v3, "KNOWN_APP_SIP"

    iget-boolean v1, p0, mKnownAppSipScenario:Z

    if-eqz v1, :cond_31

    const-string v1, "1"

    :goto_2b
    invoke-virtual {v2, v3, v1}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_2e
    return-void

    .line 289
    .end local v0    # "current":Z
    :cond_2f
    const/4 v0, 0x0

    goto :goto_9

    .line 295
    .restart local v0    # "current":Z
    :cond_31
    const-string v1, "0"

    goto :goto_2b
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchWindowFocusChanged(Z)V

    .line 224
    invoke-virtual {p0}, isFocused()Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    .line 226
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_29

    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 227
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 232
    :cond_29
    return-void
.end method

.method public extendSelection(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 143
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 168
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 104
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideCursorControllers()V
    .registers 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 253
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 193
    if-eqz p1, :cond_26

    .line 195
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_26

    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 196
    invoke-virtual {p0}, hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 197
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 203
    :cond_26
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 205
    sget-object v0, sKnownAppList:Ljava/util/HashSet;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 206
    if-eqz p1, :cond_46

    .line 207
    iget-object v0, p0, mSipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    :goto_40
    iput-boolean p1, p0, mFocused:Z

    .line 212
    invoke-direct {p0}, updateSipFocusStatus()V

    .line 214
    :cond_45
    return-void

    .line 209
    :cond_46
    iget-object v0, p0, mSipTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_40
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-virtual {p0}, isHoveringUIEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_21

    .line 309
    :try_start_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_26

    invoke-virtual {p0}, isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 310
    new-instance v1, Landroid/widget/EditText$2;

    invoke-direct {v1, p0}, Landroid/widget/EditText$2;-><init>(Landroid/widget/EditText;)V

    iput-object v1, p0, mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 319
    iget-object v1, p0, mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_40

    .line 331
    :cond_21
    :goto_21
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 320
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_21

    .line 321
    iget-object v1, p0, mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3a

    .line 322
    iget-object v1, p0, mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 325
    :cond_3a
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3f} :catch_40

    goto :goto_21

    .line 327
    :catch_40
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hover icon is failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 157
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 163
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_26

    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    :goto_7
    return v1

    .line 176
    :pswitch_8
    if-eqz p2, :cond_24

    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 178
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_10
    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    .line 179
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 180
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, setSelection(I)V

    .line 182
    :cond_22
    const/4 v1, 0x1

    goto :goto_7

    .line 176
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_24
    const/4 v0, 0x0

    goto :goto_10

    .line 174
    :pswitch_data_26
    .packed-switch 0x200000
        :pswitch_8
    .end packed-switch
.end method

.method public selectAll()V
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 136
    return-void
.end method

.method public setCursorColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 244
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 4
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 147
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_c

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 129
    return-void
.end method

.method public setSelection(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 122
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 114
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 115
    return-void
.end method
