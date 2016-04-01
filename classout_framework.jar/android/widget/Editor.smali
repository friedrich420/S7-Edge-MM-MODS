.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final ERROR_MESSAGE_LAYOUT:I = 0x1090110

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MENU_ITEM_ORDER_COPY:I = 0x2

.field private static final MENU_ITEM_ORDER_CUT:I = 0x1

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x3

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0xa

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x6

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x5

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x4

.field private static final SWITCH_CONTROL_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static final TW_ERROR_MESSAGE_LAYOUT:I = 0x1090158

.field private static final TW_MENU_ITEM_ORDER_CLIPBOARD:I = 0x6

.field private static final TW_MENU_ITEM_ORDER_CLOSE:I = 0x0

.field private static final TW_MENU_ITEM_ORDER_COPY:I = 0x3

.field private static final TW_MENU_ITEM_ORDER_CUT:I = 0x2

.field private static final TW_MENU_ITEM_ORDER_DICTIONARY:I = 0x7

.field private static final TW_MENU_ITEM_ORDER_PASTE:I = 0x4

.field private static final TW_MENU_ITEM_ORDER_SELECT_ALL:I = 0x1

.field private static final TW_MENU_ITEM_ORDER_SHARE:I = 0x5

.field private static final TW_MENU_ITEM_ORDER_WEBSEARCH:I = 0x8

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1

.field private static final mDisableDoubleTapTextSelection:Z


# instance fields
.field private isSecClipboardEnabled:Z

.field mAllowUndo:Z

.field mBlink:Landroid/widget/Editor$Blink;

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCursorShiftOffset:I

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field mDoubleTap:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertActionHandleTopMargin:I

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsInsertionActionModeStartPending:Z

.field private mIsSuggestionsPopup:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mPopupBelowMarginDifSelectAndInsert:I

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field mPreserveDetachedSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field mSelectionActionMode:Z

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private mTextView:Landroid/widget/TextView;

.field private mThemeIsDeviceDefault:Z

.field mTouchFocusSelected:Z

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field private mUpdateWordIteratorText:Z

.field private mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

.field mWordIterator:Landroid/text/method/WordIterator;

.field private mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, TEMP_POSITION:[F

    .line 154
    const/16 v0, 0x14

    sput v0, DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 318
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableDoubleTapTextSelection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, mDisableDoubleTapTextSelection:Z

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 10
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v3, Landroid/content/UndoManager;

    invoke-direct {v3}, Landroid/content/UndoManager;-><init>()V

    iput-object v3, p0, mUndoManager:Landroid/content/UndoManager;

    .line 188
    iget-object v3, p0, mUndoManager:Landroid/content/UndoManager;

    const-string v4, "Editor"

    invoke-virtual {v3, v4, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v3

    iput-object v3, p0, mUndoOwner:Landroid/content/UndoOwner;

    .line 189
    new-instance v3, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v3, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 190
    iput-boolean v7, p0, mAllowUndo:Z

    .line 201
    iput-boolean v6, p0, mIsSuggestionsPopup:Z

    .line 225
    iput v6, p0, mInputType:I

    .line 233
    iput-boolean v7, p0, mCursorVisible:Z

    .line 250
    iput-boolean v7, p0, mShowSoftInputOnFocus:Z

    .line 254
    iput-boolean v6, p0, mThemeIsDeviceDefault:Z

    .line 260
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 262
    iput v6, p0, mCursorShiftOffset:I

    .line 278
    iput-boolean v6, p0, mDoubleTap:Z

    .line 302
    new-instance v3, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v3, p0, v5}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v3, p0, mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 304
    iput-boolean v6, p0, isSecClipboardEnabled:Z

    .line 306
    new-instance v3, Landroid/widget/Editor$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 315
    iput-boolean v6, p0, mIsInsertionActionModeStartPending:Z

    .line 322
    iput-boolean v6, p0, mSelectionActionMode:Z

    .line 6462
    iput-object v5, p0, mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    .line 328
    iput-object p1, p0, mTextView:Landroid/widget/TextView;

    .line 330
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 331
    new-instance v3, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v3, p0, v5}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v3, p0, mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 334
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, isSecClipboardEnabled:Z

    .line 337
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [I

    const v5, 0x11600bd

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 338
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 339
    iput-boolean v7, p0, mThemeIsDeviceDefault:Z

    .line 340
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 342
    .local v2, "mPopupBelowMarginSelection":I
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105024c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 344
    .local v1, "mPopupBelowMarginInsertion":I
    sub-int v3, v2, v1

    iput v3, p0, mPopupBelowMarginDifSelectAndInsert:I

    .line 345
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105024d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, mInsertActionHandleTopMargin:I

    .line 349
    .end local v1    # "mPopupBelowMarginInsertion":I
    .end local v2    # "mPopupBelowMarginSelection":I
    :goto_af
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    return-void

    .line 347
    :cond_b3
    iput-boolean v6, p0, mThemeIsDeviceDefault:Z

    goto :goto_af
.end method

.method static synthetic access$1600(Landroid/widget/Editor;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-boolean v0, p0, mThemeIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/Editor;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-boolean v0, p0, mIsSuggestionsPopup:Z

    return v0
.end method

.method static synthetic access$1802(Landroid/widget/Editor;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, mIsSuggestionsPopup:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/widget/Editor;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 148
    iput-object p1, p0, mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/Editor;IIZ)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$3200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-object v0, p0, mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 148
    iput-object p1, p0, mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-object v0, p0, mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 148
    iput-object p1, p0, mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-object v0, p0, mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3502(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 148
    iput-object p1, p0, mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3600(Landroid/widget/Editor;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, isDictionaryEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/Editor;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, shouldOfferToShowSuggestions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/Editor;)Landroid/text/Layout;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, getActiveLayout()Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Landroid/widget/Editor;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget v0, p0, mPopupBelowMarginDifSelectAndInsert:I

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/Editor;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget v0, p0, mInsertActionHandleTopMargin:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/Editor;FF)Z
    .registers 4
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    invoke-direct {p0, p1}, updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-object v0, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4402(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 148
    iput-object p1, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4500(Landroid/widget/Editor;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, isCursorInsideEasyCorrectionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/Editor;Landroid/text/Layout;IF)I
    .registers 5
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/text/Layout;
    .param p2, "x2"    # I
    .param p3, "x3"    # F

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/Editor;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, getWordEnd(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/Editor;I)I
    .registers 3
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, getWordStart(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/Editor;IZ)I
    .registers 4
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, getNextCursorOffset(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroid/widget/Editor;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, isUniversalSwitchEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200()Z
    .registers 1

    .prologue
    .line 148
    sget-boolean v0, mDisableDoubleTapTextSelection:Z

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/Editor;FF)Z
    .registers 4
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/Editor;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, selectCurrentWordAndStartDrag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-object v0, p0, mUndoManager:Landroid/content/UndoManager;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-object v0, p0, mUndoOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method static synthetic access$5800(Ljava/lang/CharSequence;II)Z
    .registers 4
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 148
    invoke-static {p0, p1, p2}, isValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/Editor;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/Editor;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/Editor;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 148
    invoke-direct {p0}, sendUpdateSelection()V

    return-void
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .registers 16
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 793
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 794
    .local v11, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 796
    .local v8, "ht":I
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 798
    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 800
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    .line 801
    .local v10, "max":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_33
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_44

    .line 802
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 801
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    .line 809
    :cond_44
    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 810
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 811
    return-void
.end method

.method private destroyDisplayListsData()V
    .registers 4

    .prologue
    .line 490
    iget-object v2, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v2, :cond_26

    .line 491
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 492
    iget-object v2, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v2, v1

    if-eqz v2, :cond_24

    iget-object v2, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v2, v2, v1

    iget-object v0, v2, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 494
    .local v0, "displayList":Landroid/view/RenderNode;
    :goto_16
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 495
    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    .line 491
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 492
    .end local v0    # "displayList":Landroid/view/RenderNode;
    :cond_24
    const/4 v0, 0x0

    goto :goto_16

    .line 499
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .registers 9

    .prologue
    .line 1257
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1258
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_36

    move-object v2, v4

    .line 1259
    check-cast v2, Landroid/text/Spannable;

    .line 1260
    .local v2, "spannable":Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1262
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    array-length v5, v3

    if-ge v1, v5, :cond_36

    .line 1263
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1264
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_33

    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_33

    .line 1266
    and-int/lit8 v0, v0, -0x2

    .line 1267
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1262
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1271
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_36
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .prologue
    const/4 v3, 0x0

    .line 1793
    if-eqz p2, :cond_19

    const/4 v1, 0x1

    .line 1794
    .local v1, "translate":Z
    :goto_4
    if-eqz v1, :cond_a

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1795
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget v2, p0, mCursorCount:I

    if-ge v0, v2, :cond_1b

    .line 1796
    iget-object v2, p0, mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1795
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1793
    .end local v0    # "i":I
    .end local v1    # "translate":Z
    :cond_19
    const/4 v1, 0x0

    goto :goto_4

    .line 1798
    .restart local v0    # "i":I
    .restart local v1    # "translate":Z
    :cond_1b
    if-eqz v1, :cond_22

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1799
    :cond_22
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1672
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v28

    .line 1673
    .local v28, "lineRange":J
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 1674
    .local v9, "firstLine":I
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1675
    .local v10, "lastLine":I
    if-gez v10, :cond_13

    .line 1770
    :goto_12
    return-void

    :cond_13
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1677
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1680
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_18d

    .line 1681
    move-object/from16 v0, p0

    iget-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v4, :cond_38

    .line 1682
    const-class v4, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    move-object/from16 v0, p0

    iput-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    :cond_38
    move-object/from16 v21, p2

    .line 1685
    check-cast v21, Landroid/text/DynamicLayout;

    .line 1686
    .local v21, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v15

    .line 1687
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v17

    .line 1688
    .local v17, "blockIndices":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v31

    .line 1689
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v24

    .line 1691
    .local v24, "indexFirstChangedBlock":I
    const/16 v22, -0x1

    .line 1692
    .local v22, "endOfPreviousBlock":I
    const/16 v33, 0x0

    .line 1693
    .local v33, "searchStartIndex":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_52
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_184

    .line 1694
    aget v14, v15, v23

    .line 1695
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    .line 1697
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_114

    const/16 v18, 0x1

    .line 1698
    .local v18, "blockIsInvalid":Z
    :goto_63
    if-eqz v18, :cond_86

    .line 1699
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, getAvailableDisplayListIndex([III)I

    move-result v16

    .line 1702
    aput v16, v17, v23

    .line 1703
    move-object/from16 v0, p0

    iget-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    if-eqz v4, :cond_84

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1706
    :cond_84
    add-int/lit8 v33, v16, 0x1

    .line 1709
    :cond_86
    move-object/from16 v0, p0

    iget-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    if-nez v4, :cond_ae

    .line 1710
    move-object/from16 v0, p0

    iget-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    new-instance v5, Landroid/widget/Editor$TextRenderNode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v16

    .line 1714
    :cond_ae
    move-object/from16 v0, p0

    iget-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    invoke-virtual {v4}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v13

    .line 1715
    .local v13, "blockDisplayListIsInvalid":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    iget-object v12, v4, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 1716
    .local v12, "blockDisplayList":Landroid/view/RenderNode;
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c8

    if-eqz v13, :cond_16c

    .line 1717
    :cond_c8
    add-int/lit8 v11, v22, 0x1

    .line 1718
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    .line 1719
    .local v34, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    .line 1720
    .local v19, "bottom":I
    const/16 v25, 0x0

    .line 1721
    .local v25, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v32

    .line 1722
    .local v32, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_124

    .line 1723
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    .line 1724
    .local v30, "min":F
    const/16 v27, 0x1

    .line 1725
    .local v27, "max":F
    move/from16 v26, v11

    .local v26, "line":I
    :goto_f1
    move/from16 v0, v26

    if-gt v0, v14, :cond_118

    .line 1726
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1727
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1725
    add-int/lit8 v26, v26, 0x1

    goto :goto_f1

    .line 1697
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_114
    const/16 v18, 0x0

    goto/16 :goto_63

    .line 1729
    .restart local v11    # "blockBeginLine":I
    .restart local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v18    # "blockIsInvalid":Z
    .restart local v19    # "bottom":I
    .restart local v25    # "left":I
    .restart local v26    # "line":I
    .restart local v27    # "max":F
    .restart local v30    # "min":F
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :cond_118
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1730
    const/high16 v4, 0x3f000000    # 0.5f

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v32, v0

    .line 1734
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    :cond_124
    if-eqz v13, :cond_161

    .line 1735
    sub-int v4, v32, v25

    sub-int v5, v19, v34

    invoke-virtual {v12, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v20

    .local v20, "displayListCanvas":Landroid/view/DisplayListCanvas;
    move-object/from16 v4, p1

    .line 1738
    check-cast v4, Landroid/view/DisplayListCanvas;

    invoke-virtual {v4}, Landroid/view/DisplayListCanvas;->getHighContrastText()Z

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/DisplayListCanvas;->setHighContrastText(Z)V

    .line 1743
    move/from16 v0, v25

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v34

    neg-int v5, v0

    int-to-float v5, v5

    :try_start_143
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 1744
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v4, v0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v4, v4, v16

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_158
    .catchall {:try_start_143 .. :try_end_158} :catchall_179

    .line 1749
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1751
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1757
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :cond_161
    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .end local v11    # "blockBeginLine":I
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_16c
    move-object/from16 v4, p1

    .line 1760
    check-cast v4, Landroid/view/DisplayListCanvas;

    invoke-virtual {v4, v12}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 1762
    move/from16 v22, v14

    .line 1693
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_52

    .line 1749
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_179
    move-exception v4

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 1751
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    throw v4

    .line 1765
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v14    # "blockEndLine":I
    .end local v16    # "blockIndex":I
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_184
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    goto/16 :goto_12

    .line 1768
    .end local v15    # "blockEndLines":[I
    .end local v17    # "blockIndices":[I
    .end local v21    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v22    # "endOfPreviousBlock":I
    .end local v23    # "i":I
    .end local v24    # "indexFirstChangedBlock":I
    .end local v31    # "numberOfBlocks":I
    .end local v33    # "searchStartIndex":I
    :cond_18d
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto/16 :goto_12
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 14
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v6, 0x0

    .line 1494
    if-eqz p1, :cond_5

    if-nez p5, :cond_6

    .line 1563
    :cond_5
    :goto_5
    return v6

    .line 1498
    :cond_6
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1499
    .local v1, "content":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    .line 1503
    const/4 v7, -0x2

    if-eq p2, v7, :cond_9e

    .line 1504
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1505
    .local v0, "N":I
    if-gez p2, :cond_5c

    .line 1506
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1507
    const/4 p2, 0x0

    .line 1508
    move p3, v0

    .line 1541
    :cond_1e
    :goto_1e
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_97

    .line 1542
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1553
    .end local v0    # "N":I
    :goto_2a
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1554
    const/16 v7, 0x800

    invoke-static {v1, v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_3a

    .line 1555
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1557
    :cond_3a
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 1558
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1560
    :cond_48
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1561
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1562
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1563
    const/4 v6, 0x1

    goto :goto_5

    .line 1512
    .restart local v0    # "N":I
    :cond_5c
    add-int/2addr p3, p4

    .line 1514
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_82

    move-object v4, v1

    .line 1515
    check-cast v4, Landroid/text/Spanned;

    .line 1516
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1518
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 1519
    .local v2, "i":I
    :cond_6b
    :goto_6b
    if-lez v2, :cond_82

    .line 1520
    add-int/lit8 v2, v2, -0x1

    .line 1521
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1522
    .local v3, "j":I
    if-ge v3, p2, :cond_78

    move p2, v3

    .line 1523
    :cond_78
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1524
    if-le v3, p3, :cond_6b

    move p3, v3

    goto :goto_6b

    .line 1527
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_82
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1528
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1530
    if-le p2, v0, :cond_8f

    .line 1531
    move p2, v0

    .line 1535
    :cond_8b
    :goto_8b
    if-le p3, v0, :cond_93

    .line 1536
    move p3, v0

    goto :goto_1e

    .line 1532
    :cond_8f
    if-gez p2, :cond_8b

    .line 1533
    const/4 p2, 0x0

    goto :goto_8b

    .line 1537
    :cond_93
    if-gez p3, :cond_1e

    .line 1538
    const/4 p3, 0x0

    goto :goto_1e

    .line 1545
    :cond_97
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_2a

    .line 1549
    .end local v0    # "N":I
    :cond_9e
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1550
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1551
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_2a
.end method

.method private getActiveLayout()Landroid/text/Layout;
    .registers 4

    .prologue
    .line 4392
    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4393
    .local v1, "layout":Landroid/text/Layout;
    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4394
    .local v0, "hintLayout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 4396
    move-object v1, v0

    .line 4398
    :cond_23
    return-object v1
.end method

.method private getAvailableDisplayListIndex([III)I
    .registers 10
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .prologue
    .line 1774
    iget-object v4, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v3, v4

    .line 1775
    .local v3, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_4
    if-ge v1, v3, :cond_17

    .line 1776
    const/4 v0, 0x0

    .line 1777
    .local v0, "blockIndexFound":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_8
    if-ge v2, p2, :cond_f

    .line 1778
    aget v4, p1, v2

    if-ne v4, v1, :cond_14

    .line 1779
    const/4 v0, 0x1

    .line 1783
    :cond_f
    if-eqz v0, :cond_23

    .line 1775
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1777
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1788
    .end local v0    # "blockIndexFound":Z
    .end local v2    # "j":I
    :cond_17
    iget-object v4, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    iput-object v4, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    move v1, v3

    .line 1789
    .end local v1    # "i":I
    :cond_23
    return v1
.end method

.method private getCharClusterRange(I)J
    .registers 6
    .param p1, "offset"    # I

    .prologue
    .line 994
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 995
    .local v0, "textLength":I
    if-ge p1, v0, :cond_16

    .line 996
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getNextCursorOffset(IZ)I

    move-result v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    .line 1001
    :goto_15
    return-wide v2

    .line 998
    :cond_16
    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_24

    .line 999
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, getNextCursorOffset(IZ)I

    move-result v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    goto :goto_15

    .line 1001
    :cond_24
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    goto :goto_15
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .registers 18
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .prologue
    .line 5189
    iget-object v12, p0, mTextView:Landroid/widget/TextView;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v8

    .line 5190
    .local v8, "trueLine":I
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    move/from16 v0, p2

    if-gt v0, v12, :cond_1a

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    if-lez v12, :cond_1a

    if-gez p2, :cond_1b

    .line 5222
    .end local v8    # "trueLine":I
    :cond_1a
    :goto_1a
    return v8

    .line 5196
    .restart local v8    # "trueLine":I
    :cond_1b
    sub-int v12, v8, p2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_1a

    .line 5201
    iget-object v12, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v12

    int-to-float v9, v12

    .line 5202
    .local v9, "verticalOffset":F
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    .line 5203
    .local v4, "lineCount":I
    iget-object v12, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v7, v12, v13

    .line 5205
    .local v7, "slop":F
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    add-float v2, v12, v9

    .line 5206
    .local v2, "firstLineTop":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    int-to-float v12, v12

    add-float v6, v12, v9

    .line 5207
    .local v6, "prevLineTop":F
    sub-float v12, v6, v7

    add-float v13, v2, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 5209
    .local v11, "yTopBound":F
    add-int/lit8 v12, v4, -0x1

    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    add-float v3, v12, v9

    .line 5210
    .local v3, "lastLineBottom":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    int-to-float v12, v12

    add-float v5, v12, v9

    .line 5211
    .local v5, "prevLineBottom":F
    add-float v12, v5, v7

    sub-float v13, v3, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 5215
    .local v10, "yBottomBound":F
    cmpg-float v12, p3, v11

    if-gtz v12, :cond_76

    .line 5216
    add-int/lit8 v12, p2, -0x1

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "currLine":I
    :goto_74
    move v8, v1

    .line 5222
    goto :goto_1a

    .line 5217
    .end local v1    # "currLine":I
    :cond_76
    cmpl-float v12, p3, v10

    if-ltz v12, :cond_83

    .line 5218
    add-int/lit8 v12, p2, 0x1

    add-int/lit8 v13, v4, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "currLine":I
    goto :goto_74

    .line 5220
    .end local v1    # "currLine":I
    :cond_83
    move/from16 v1, p2

    .restart local v1    # "currLine":I
    goto :goto_74
.end method

.method private getErrorX()I
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 586
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 588
    .local v4, "scale":F
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 590
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 593
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_66

    .line 596
    if-eqz v0, :cond_22

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_22
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 597
    .local v3, "offset":I
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v1, v5, v3

    .line 605
    .local v1, "errorX":I
    :goto_41
    return v1

    .line 600
    .end local v1    # "errorX":I
    .end local v3    # "offset":I
    :pswitch_42
    if-eqz v0, :cond_46

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_46
    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 601
    .restart local v3    # "offset":I
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v6

    add-int v1, v5, v6

    .restart local v1    # "errorX":I
    goto :goto_41

    .line 593
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_42
    .end packed-switch
.end method

.method private getErrorY()I
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 618
    .local v0, "compoundPaddingTop":I
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    iget-object v8, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v6, v7, v0

    .line 621
    .local v6, "vspace":I
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 623
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    .line 625
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_58

    .line 628
    if-eqz v1, :cond_2e

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 635
    .local v2, "height":I
    :cond_2e
    :goto_2e
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v0, v7

    .line 641
    .local v3, "icontop":I
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 642
    .local v5, "scale":F
    add-int v7, v3, v2

    iget-object v8, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    .line 631
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :pswitch_52
    if-eqz v1, :cond_56

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .restart local v2    # "height":I
    :cond_56
    goto :goto_2e

    .line 625
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_52
    .end packed-switch
.end method

.method private getLastTapPosition()I
    .registers 3

    .prologue
    .line 1294
    iget-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_23

    .line 1295
    iget-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1296
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_23

    .line 1298
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_22

    .line 1299
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1305
    .end local v0    # "lastTapPosition":I
    :cond_22
    :goto_22
    return v0

    :cond_23
    const/4 v0, -0x1

    goto :goto_22
.end method

.method private getLastTouchOffsets()J
    .registers 7

    .prologue
    .line 1153
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1154
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1155
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1156
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method private getNextCursorOffset(IZ)I
    .registers 12
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .prologue
    const/4 v2, 0x0

    .line 984
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 985
    .local v7, "layout":Landroid/text/Layout;
    if-nez v7, :cond_a

    .line 990
    .end local p1    # "offset":I
    :cond_9
    :goto_9
    return p1

    .line 986
    .restart local p1    # "offset":I
    :cond_a
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 987
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v7}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v7, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_1f
    if-eqz p2, :cond_2e

    move v6, v2

    :goto_22
    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v8

    .line 990
    .local v8, "nextOffset":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_9

    move p1, v8

    goto :goto_9

    .end local v8    # "nextOffset":I
    :cond_2c
    move v4, v2

    .line 987
    goto :goto_1f

    :cond_2e
    const/4 v6, 0x2

    goto :goto_22
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .registers 3

    .prologue
    .line 1027
    iget-object v0, p0, mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_c

    .line 1028
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1030
    :cond_c
    iget-object v0, p0, mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 2303
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090108

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2306
    .local v1, "shadowView":Landroid/widget/TextView;
    if-nez v1, :cond_1c

    .line 2307
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unable to inflate text drag thumbnail"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2310
    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sget v5, DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v4, v5, :cond_36

    .line 2311
    sget v0, DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 2312
    .local v0, "end":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2313
    .local v3, "stopChar":C
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2314
    add-int/lit8 v0, v0, -0x1

    .line 2316
    :cond_32
    invoke-interface {p1, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2318
    .end local v0    # "end":I
    .end local v3    # "stopChar":C
    :cond_36
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2319
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2321
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2322
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2324
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2327
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2328
    .local v2, "size":I
    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 2330
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v7, v7, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 2331
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 2332
    new-instance v4, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v4, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v4
.end method

.method private getWordEnd(I)I
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 840
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 841
    .local v0, "retOffset":I
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 843
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    .line 848
    :goto_1a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 851
    .end local p1    # "offset":I
    :goto_1d
    return p1

    .line 846
    .restart local p1    # "offset":I
    :cond_1e
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    goto :goto_1a

    :cond_27
    move p1, v0

    .line 851
    goto :goto_1d
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 967
    iget-object v1, p0, mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v1, :cond_15

    .line 968
    new-instance v1, Landroid/text/method/WordIterator;

    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 969
    const/4 v1, 0x1

    iput-boolean v1, p0, mUpdateWordIteratorText:Z

    .line 971
    :cond_15
    iget-boolean v1, p0, mUpdateWordIteratorText:Z

    if-eqz v1, :cond_2a

    .line 976
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 977
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 978
    iput-boolean v3, p0, mUpdateWordIteratorText:Z

    .line 980
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_2a
    iget-object v1, p0, mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v1
.end method

.method private getWordStart(I)I
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 825
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 826
    .local v0, "retOffset":I
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 828
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    .line 833
    :goto_1a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 836
    .end local p1    # "offset":I
    :goto_1d
    return p1

    .line 831
    .restart local p1    # "offset":I
    :cond_1e
    invoke-direct {p0}, getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    goto :goto_1a

    :cond_27
    move p1, v0

    .line 836
    goto :goto_1d
.end method

.method private hideCursorControllers()V
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_19

    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_19

    .line 721
    :cond_14
    iget-object v0, p0, mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 723
    :cond_19
    invoke-virtual {p0}, hideInsertionPointCursorController()V

    .line 724
    invoke-virtual {p0}, stopTextActionMode()V

    .line 725
    return-void
.end method

.method private hideError()V
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_11

    .line 569
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 570
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 574
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, mShowErrorAfterAttach:Z

    .line 575
    return-void
.end method

.method private hideFloatingToolbar()V
    .registers 5

    .prologue
    .line 1409
    iget-object v0, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_12

    .line 1410
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    iget-object v1, p0, mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1411
    iget-object v0, p0, mTextActionMode:Landroid/view/ActionMode;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    .line 1413
    :cond_12
    return-void
.end method

.method private hideSpanControllers()V
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_9

    .line 709
    iget-object v0, p0, mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 711
    :cond_9
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .registers 7

    .prologue
    .line 2075
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 2076
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 2078
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    array-length v3, v2

    if-ge v0, v3, :cond_2f

    .line 2079
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2c

    .line 2080
    const/4 v3, 0x1

    .line 2083
    :goto_2b
    return v3

    .line 2078
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2083
    :cond_2f
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method private isDictionaryEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 6389
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canDictionary()Z

    move-result v3

    if-nez v3, :cond_e

    .line 6401
    :cond_d
    :goto_d
    return v2

    .line 6393
    :cond_e
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6394
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6396
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    if-ltz v3, :cond_d

    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-ltz v3, :cond_d

    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_d

    invoke-direct {p0}, isInSpannableObj()Z

    move-result v3

    if-nez v3, :cond_d

    .line 6399
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private isInSpannableObj()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 6405
    const/4 v4, 0x0

    .line 6406
    .local v4, "min":I
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 6407
    .local v3, "max":I
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 6408
    .local v6, "selStart":I
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 6409
    .local v5, "selEnd":I
    const/4 v0, 0x0

    .line 6411
    .local v0, "checkSpan":Z
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6412
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6413
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6414
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_46

    .line 6415
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v2, v7, :cond_46

    .line 6416
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v8, 0xfffc

    if-ne v7, v8, :cond_47

    .line 6417
    const/4 v0, 0x1

    .line 6422
    .end local v2    # "i":I
    :cond_46
    return v0

    .line 6415
    .restart local v2    # "i":I
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_36
.end method

.method private isOffsetVisible(I)Z
    .registers 8
    .param p1, "offset"    # I

    .prologue
    .line 1079
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1080
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_a

    const/4 v4, 0x0

    .line 1085
    :goto_9
    return v4

    .line 1082
    :cond_a
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1083
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 1084
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 1085
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, isPositionVisible(FF)Z

    move-result v4

    goto :goto_9
.end method

.method private isPositionOnText(FF)Z
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 1093
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1094
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_a

    .line 1101
    :cond_9
    :goto_9
    return v2

    .line 1096
    :cond_a
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 1097
    .local v1, "line":I
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1099
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_9

    .line 1100
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_9

    .line 1101
    const/4 v2, 0x1

    goto :goto_9
.end method

.method private isPositionVisible(FF)Z
    .registers 14
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1039
    sget-object v6, TEMP_POSITION:[F

    monitor-enter v6

    .line 1040
    :try_start_6
    sget-object v2, TEMP_POSITION:[F

    .line 1041
    .local v2, "position":[F
    const/4 v7, 0x0

    aput p1, v2, v7

    .line 1042
    const/4 v7, 0x1

    aput p2, v2, v7

    .line 1043
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    .line 1045
    .local v3, "view":Landroid/view/View;
    :goto_10
    if-eqz v3, :cond_8a

    .line 1046
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_2c

    .line 1048
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 1049
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 1052
    :cond_2c
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_52

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_52

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_52

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_54

    .line 1054
    :cond_52
    monitor-exit v6

    .line 1075
    :goto_53
    return v4

    .line 1057
    :cond_54
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_65

    .line 1058
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1061
    :cond_65
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1062
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1064
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1065
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_88

    .line 1066
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_10

    .line 1069
    :cond_88
    const/4 v3, 0x0

    goto :goto_10

    .line 1072
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_8a
    monitor-exit v6

    move v4, v5

    .line 1075
    goto :goto_53

    .line 1072
    .end local v2    # "position":[F
    .end local v3    # "view":Landroid/view/View;
    :catchall_8d
    move-exception v4

    monitor-exit v6
    :try_end_8f
    .catchall {:try_start_6 .. :try_end_8f} :catchall_8d

    throw v4
.end method

.method private isUniversalSwitchEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1957
    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "universal_switch_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 5784
    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private resumeBlink()V
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_c

    .line 765
    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 766
    invoke-virtual {p0}, makeBlink()V

    .line 768
    :cond_c
    return-void
.end method

.method private selectCurrentWord()Z
    .registers 23

    .prologue
    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->canSelectText()Z

    move-result v20

    if-nez v20, :cond_f

    .line 860
    const/16 v20, 0x0

    .line 947
    :goto_e
    return v20

    .line 863
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v20

    if-eqz v20, :cond_26

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->selectAllText()Z

    move-result v20

    goto :goto_e

    .line 870
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 873
    .local v2, "inputType":I
    and-int/lit8 v3, v2, 0xf

    .line 874
    .local v3, "klass":I
    and-int/lit16 v0, v2, 0xff0

    move/from16 v18, v0

    .line 877
    .local v18, "variation":I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v3, v0, :cond_71

    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v3, v0, :cond_71

    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v3, v0, :cond_71

    const/16 v20, 0x10

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_71

    const/16 v20, 0x20

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_71

    const/16 v20, 0xd0

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_71

    const/16 v20, 0xb0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7c

    .line 884
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->selectAllText()Z

    move-result v20

    goto :goto_e

    .line 887
    :cond_7c
    invoke-direct/range {p0 .. p0}, getLastTouchOffsets()J

    move-result-wide v4

    .line 888
    .local v4, "lastTouchOffsets":J
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 889
    .local v7, "minOffset":I
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 891
    .local v6, "maxOffset":I
    if-ne v7, v6, :cond_102

    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v20

    if-ne v6, v0, :cond_102

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    const-class v21, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ReplacementSpan;

    .line 897
    .local v11, "replacementSpans":[Landroid/text/style/ReplacementSpan;
    array-length v0, v11

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_102

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    const/16 v21, 0x0

    aget-object v21, v11, v21

    invoke-interface/range {v20 .. v21}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 899
    .local v13, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    const/16 v21, 0x0

    aget-object v21, v11, v21

    invoke-interface/range {v20 .. v21}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 901
    .local v12, "selEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spannable;

    move-object/from16 v0, v20

    invoke-static {v0, v13, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 902
    if-le v12, v13, :cond_fe

    const/16 v20, 0x1

    goto/16 :goto_e

    :cond_fe
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 907
    .end local v11    # "replacementSpans":[Landroid/text/style/ReplacementSpan;
    .end local v12    # "selEnd":I
    .end local v13    # "selStart":I
    :cond_102
    if-ltz v7, :cond_116

    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_11a

    :cond_116
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 908
    :cond_11a
    if-ltz v6, :cond_12e

    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v6, v0, :cond_132

    :cond_12e
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 913
    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    const-class v21, Landroid/text/style/URLSpan;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/style/URLSpan;

    .line 915
    .local v17, "urlSpans":[Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    const-class v21, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ReplacementSpan;

    .line 918
    .restart local v11    # "replacementSpans":[Landroid/text/style/ReplacementSpan;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1b2

    .line 919
    const/16 v20, 0x0

    aget-object v16, v17, v20

    .line 920
    .local v16, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 921
    .local v15, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 946
    .end local v16    # "urlSpan":Landroid/text/style/URLSpan;
    .local v14, "selectionEnd":I
    :cond_19b
    :goto_19b
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spannable;

    move-object/from16 v0, v20

    invoke-static {v0, v15, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 947
    if-le v14, v15, :cond_225

    const/16 v20, 0x1

    goto/16 :goto_e

    .line 923
    .end local v14    # "selectionEnd":I
    .end local v15    # "selectionStart":I
    :cond_1b2
    array-length v0, v11

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1e6

    .line 924
    const/16 v20, 0x0

    aget-object v10, v11, v20

    .line 925
    .local v10, "replacementSpan":Landroid/text/style/ReplacementSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 926
    .restart local v15    # "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spanned;

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 928
    .restart local v14    # "selectionEnd":I
    goto :goto_19b

    .line 931
    .end local v10    # "replacementSpan":Landroid/text/style/ReplacementSpan;
    .end local v14    # "selectionEnd":I
    .end local v15    # "selectionStart":I
    :cond_1e6
    invoke-virtual/range {p0 .. p0}, getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v19

    .line 932
    .local v19, "wordIterator":Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 934
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v15

    .line 935
    .restart local v15    # "selectionStart":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v14

    .line 937
    .restart local v14    # "selectionEnd":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_215

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_215

    if-ne v15, v14, :cond_19b

    .line 940
    :cond_215
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getCharClusterRange(I)J

    move-result-wide v8

    .line 941
    .local v8, "range":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v15

    .line 942
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v14

    goto/16 :goto_19b

    .line 947
    .end local v8    # "range":J
    .end local v19    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_225
    const/16 v20, 0x0

    goto/16 :goto_e
.end method

.method private selectCurrentWordAndStartDrag()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1921
    iget-object v1, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    .line 1922
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    iget-object v2, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1924
    :cond_c
    invoke-virtual {p0}, extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1933
    :cond_12
    :goto_12
    return v0

    .line 1928
    :cond_13
    invoke-virtual {p0}, checkFieldAndSelectCurrentWord()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1932
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag()V

    .line 1933
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private sendUpdateSelection()V
    .registers 8

    .prologue
    .line 1607
    iget-object v1, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_3d

    iget-object v1, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v1, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v1, :cond_3d

    .line 1608
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1609
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3d

    .line 1610
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1611
    .local v2, "selectionStart":I
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1612
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    .line 1613
    .local v4, "candStart":I
    const/4 v5, -0x1

    .line 1614
    .local v5, "candEnd":I
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_38

    .line 1615
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 1616
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 1617
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 1621
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_38
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1625
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "candStart":I
    .end local v5    # "candEnd":I
    :cond_3d
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 556
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 557
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_15

    .line 558
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 560
    :cond_15
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 562
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 563
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 564
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 565
    return-void
.end method

.method private shouldBlink()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2249
    invoke-virtual {p0}, isCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2257
    :cond_f
    :goto_f
    return v2

    .line 2251
    :cond_10
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2252
    .local v1, "start":I
    if-ltz v1, :cond_f

    .line 2254
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2255
    .local v0, "end":I
    if-ltz v0, :cond_f

    .line 2257
    if-ne v1, v0, :cond_f

    const/4 v2, 0x1

    goto :goto_f
.end method

.method private shouldOfferToShowSuggestions()Z
    .registers 15

    .prologue
    .line 2013
    iget-object v13, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 2014
    .local v10, "text":Ljava/lang/CharSequence;
    instance-of v13, v10, Landroid/text/Spannable;

    if-nez v13, :cond_c

    const/4 v13, 0x0

    .line 2067
    :goto_b
    return v13

    :cond_c
    move-object v8, v10

    .line 2016
    check-cast v8, Landroid/text/Spannable;

    .line 2017
    .local v8, "spannable":Landroid/text/Spannable;
    iget-object v13, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 2018
    .local v5, "selectionStart":I
    iget-object v13, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 2019
    .local v4, "selectionEnd":I
    const-class v13, Landroid/text/style/SuggestionSpan;

    invoke-interface {v8, v5, v4, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/SuggestionSpan;

    .line 2021
    .local v9, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v13, v9

    if-nez v13, :cond_28

    .line 2022
    const/4 v13, 0x0

    goto :goto_b

    .line 2024
    :cond_28
    if-ne v5, v4, :cond_3e

    .line 2026
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    array-length v13, v9

    if-ge v1, v13, :cond_3c

    .line 2027
    aget-object v13, v9, v1

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_39

    .line 2028
    const/4 v13, 0x1

    goto :goto_b

    .line 2026
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 2031
    :cond_3c
    const/4 v13, 0x0

    goto :goto_b

    .line 2033
    .end local v1    # "i":I
    :cond_3e
    iget-object v13, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2034
    .local v3, "minSpanStart":I
    const/4 v2, 0x0

    .line 2035
    .local v2, "maxSpanEnd":I
    iget-object v13, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 2036
    .local v12, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    .line 2037
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v0, 0x0

    .line 2038
    .local v0, "hasValidSuggestions":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_56
    array-length v13, v9

    if-ge v1, v13, :cond_8b

    .line 2039
    aget-object v13, v9, v1

    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 2040
    .local v7, "spanStart":I
    aget-object v13, v9, v1

    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 2041
    .local v6, "spanEnd":I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2042
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2043
    if-lt v5, v7, :cond_71

    if-le v5, v6, :cond_74

    .line 2038
    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 2047
    :cond_74
    if-nez v0, :cond_7f

    aget-object v13, v9, v1

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_89

    :cond_7f
    const/4 v0, 0x1

    .line 2049
    :goto_80
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2051
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_71

    .line 2047
    :cond_89
    const/4 v0, 0x0

    goto :goto_80

    .line 2054
    .end local v6    # "spanEnd":I
    .end local v7    # "spanStart":I
    :cond_8b
    if-nez v0, :cond_90

    .line 2055
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 2057
    :cond_90
    if-lt v12, v11, :cond_95

    .line 2059
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 2061
    :cond_95
    if-lt v3, v12, :cond_99

    if-le v2, v11, :cond_9c

    .line 2065
    :cond_99
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 2067
    :cond_9c
    const/4 v13, 0x1

    goto/16 :goto_b
.end method

.method private showError()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    .line 502
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_f

    .line 503
    iput-boolean v7, p0, mShowErrorAfterAttach:Z

    .line 531
    :goto_e
    return-void

    .line 507
    :cond_f
    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_57

    .line 508
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 510
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v4, p0, mThemeIsDeviceDefault:Z

    if-eqz v4, :cond_86

    .line 511
    const v4, 0x1090158

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 516
    .local v0, "err":Landroid/widget/TextView;
    :goto_2a
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 517
    .local v2, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v2

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 518
    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 519
    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v7}, Landroid/widget/Editor$ErrorPopup;->setOutsideTouchable(Z)V

    .line 522
    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v7}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 525
    .end local v0    # "err":Landroid/widget/TextView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "scale":F
    :cond_57
    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 526
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 527
    iget-object v4, p0, mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, getErrorX()I

    move-result v6

    invoke-direct {p0}, getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 530
    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    goto :goto_e

    .line 513
    .end local v3    # "tv":Landroid/widget/TextView;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_86
    const v4, 0x1090110

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "err":Landroid/widget/TextView;
    goto :goto_2a
.end method

.method private showFloatingToolbar()V
    .registers 7

    .prologue
    .line 1416
    iget-object v1, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_11

    .line 1419
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1420
    .local v0, "delay":I
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    iget-object v2, p0, mShowFloatingToolbar:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1422
    .end local v0    # "delay":I
    :cond_11
    return-void
.end method

.method private startSelectionActionModeInternal()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1961
    iget-object v4, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_c

    .line 1963
    iget-object v3, p0, mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 1989
    :cond_b
    :goto_b
    return v1

    .line 1967
    :cond_c
    invoke-virtual {p0}, checkFieldAndSelectCurrentWord()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1971
    invoke-virtual {p0}, extractedTextModeWillBeStarted()Z

    move-result v2

    .line 1975
    .local v2, "willExtract":Z
    if-nez v2, :cond_33

    invoke-direct {p0}, isUniversalSwitchEnabled()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1976
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v0, p0, v3}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    .line 1978
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iput-boolean v3, p0, mSelectionActionMode:Z

    .line 1979
    iget-boolean v4, p0, mThemeIsDeviceDefault:Z

    if-eqz v4, :cond_3b

    .line 1980
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    const/16 v5, 0x63

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, mTextActionMode:Landroid/view/ActionMode;

    .line 1988
    .end local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_33
    :goto_33
    iget-object v4, p0, mTextActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_39

    if-eqz v2, :cond_3a

    :cond_39
    move v1, v3

    .line 1989
    .local v1, "selectionStarted":Z
    :cond_3a
    goto :goto_b

    .line 1983
    .end local v1    # "selectionStarted":Z
    .restart local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_3b
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v3}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, mTextActionMode:Landroid/view/ActionMode;

    goto :goto_33
.end method

.method private suspendBlink()V
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_9

    .line 759
    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 761
    :cond_9
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1005
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1006
    .local v4, "selectionStart":I
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1008
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_10

    .line 1023
    :goto_f
    return v7

    .line 1012
    :cond_10
    if-le v4, v3, :cond_20

    .line 1013
    move v5, v4

    .line 1014
    .local v5, "tmp":I
    move v4, v3

    .line 1015
    move v3, v5

    .line 1016
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1019
    .end local v5    # "tmp":I
    :cond_20
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 1020
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1021
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 1023
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_33

    if-ge v0, v3, :cond_33

    const/4 v6, 0x1

    :goto_31
    move v7, v6

    goto :goto_f

    :cond_33
    move v6, v7

    goto :goto_31
.end method

.method private updateCursorPosition(IIIF)V
    .registers 16
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 2178
    iget-object v6, p0, mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    if-nez v6, :cond_1a

    .line 2179
    iget-object v6, p0, mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, mTextView:Landroid/widget/TextView;

    iget v8, v8, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, p1

    .line 2182
    :cond_1a
    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    if-nez v6, :cond_25

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, mTempRect:Landroid/graphics/Rect;

    .line 2183
    :cond_25
    iget-object v6, p0, mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2184
    iget-object v6, p0, mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 2185
    .local v5, "width":I
    sub-float v6, p4, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 2186
    float-to-int v6, p4

    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v2, v6, v7

    .line 2188
    .local v2, "left":I
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    iget v1, v6, Landroid/widget/TextView;->mCursorWidth:I

    .line 2189
    .local v1, "cursorWidth":I
    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v6, v5, v6

    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v4, v6, v7

    .line 2191
    .local v4, "visibleCursorWidth":I
    if-ge v4, v1, :cond_58

    .line 2192
    sub-int v6, v1, v4

    add-int/2addr v5, v6

    .line 2194
    :cond_58
    iget-object v6, p0, mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int v7, p2, v7

    add-int v8, v2, v5

    iget-object v9, p0, mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, p3

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2198
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v7

    sub-int v3, v6, v7

    .line 2199
    .local v3, "tvWidth":I
    const/4 v6, 0x0

    iput v6, p0, mCursorShiftOffset:I

    .line 2200
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    sub-int v6, v2, v6

    sub-int/2addr v6, v3

    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    add-int v0, v6, v1

    .line 2201
    .local v0, "clippedCursorWidth":I
    if-lez v0, :cond_b5

    if-ge v0, v1, :cond_b5

    .line 2202
    iput v0, p0, mCursorShiftOffset:I

    .line 2203
    iget-object v6, p0, mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    iget v7, p0, mCursorShiftOffset:I

    sub-int v7, v2, v7

    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v8, p2, v8

    add-int v9, v2, v5

    iget v10, p0, mCursorShiftOffset:I

    sub-int/2addr v9, v10

    iget-object v10, p0, mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, p3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2207
    :cond_b5
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1375
    iget-object v8, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_b

    .line 1376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_62

    .line 1406
    :cond_b
    :goto_b
    return-void

    .line 1378
    :pswitch_c
    invoke-virtual {p0}, hasSelectionController()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 1379
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectHandlerNotMoved()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1384
    :cond_26
    iget-object v8, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 1386
    .local v7, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1387
    .local v4, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1389
    .local v5, "eventY":F
    iget v8, p0, mLastDownPositionX:F

    sub-float v0, v4, v8

    .line 1390
    .local v0, "deltaX":F
    iget v8, p0, mLastDownPositionY:F

    sub-float v1, v5, v8

    .line 1391
    .local v1, "deltaY":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float v2, v8, v9

    .line 1393
    .local v2, "distanceSquared":F
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 1394
    .local v6, "touchSlop":I
    mul-int v8, v6, v6

    int-to-float v8, v8

    cmpl-float v8, v2, v8

    if-lez v8, :cond_5b

    const/4 v3, 0x1

    .line 1395
    .local v3, "enoughToStartDrag":Z
    :goto_52
    if-eqz v3, :cond_b

    .line 1396
    invoke-direct {p0}, hideFloatingToolbar()V

    .line 1397
    invoke-direct {p0}, selectCurrentWordAndStartDrag()Z

    goto :goto_b

    .line 1394
    .end local v3    # "enoughToStartDrag":Z
    :cond_5b
    const/4 v3, 0x0

    goto :goto_52

    .line 1403
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "eventX":F
    .end local v5    # "eventY":F
    .end local v6    # "touchSlop":I
    .end local v7    # "viewConfig":Landroid/view/ViewConfiguration;
    :pswitch_5d
    invoke-direct {p0}, showFloatingToolbar()V

    goto :goto_b

    .line 1376
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_c
        :pswitch_5d
    .end packed-switch
.end method

.method private updateSpellCheckSpans(IIZ)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    .line 732
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 733
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 735
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 737
    iget-object v0, p0, mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_31

    if-eqz p3, :cond_31

    .line 738
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, mSpellChecker:Landroid/widget/SpellChecker;

    .line 740
    :cond_31
    iget-object v0, p0, mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_3a

    .line 741
    iget-object v0, p0, mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 744
    :cond_3a
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .registers 6
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 2426
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 2428
    .local v0, "textLength":I
    iget-object v1, p0, mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_10

    .line 2429
    iget-object v1, p0, mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2432
    :cond_10
    iget-object v1, p0, mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1b

    .line 2433
    new-instance v1, Landroid/widget/Editor$SpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, mSpanController:Landroid/widget/Editor$SpanController;

    .line 2435
    :cond_1b
    iget-object v1, p0, mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2436
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .registers 7
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .prologue
    .line 775
    iget v0, p0, mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 776
    if-nez p1, :cond_b

    if-eqz p2, :cond_13

    .line 777
    :cond_b
    iget v0, p0, mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, mInputType:I

    .line 780
    :cond_13
    if-eqz p3, :cond_1d

    .line 781
    iget v0, p0, mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, mInputType:I

    .line 790
    :cond_1d
    :goto_1d
    return-void

    .line 784
    :cond_1e
    iget v0, p0, mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 785
    if-eqz p4, :cond_1d

    .line 786
    iget v0, p0, mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, mInputType:I

    goto :goto_1d
.end method

.method public beginBatchEdit()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1425
    iput-boolean v5, p0, mInBatchEditControllers:Z

    .line 1426
    iget-object v0, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1427
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_31

    .line 1428
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1429
    .local v1, "nesting":I
    if-ne v1, v5, :cond_31

    .line 1430
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1431
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1432
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_32

    .line 1435
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1436
    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1442
    :goto_27
    iget-object v2, p0, mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 1443
    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1446
    .end local v1    # "nesting":I
    :cond_31
    return-void

    .line 1438
    .restart local v1    # "nesting":I
    :cond_32
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1439
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1440
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_27
.end method

.method canRedo()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v3, p0, mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v0, v2

    .line 384
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, mAllowUndo:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v3

    if-lez v3, :cond_15

    :goto_14
    return v1

    :cond_15
    move v1, v2

    goto :goto_14
.end method

.method canUndo()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    new-array v0, v1, [Landroid/content/UndoOwner;

    iget-object v3, p0, mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v0, v2

    .line 379
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, mAllowUndo:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v3

    if-lez v3, :cond_15

    :goto_14
    return v1

    :cond_15
    move v1, v2

    goto :goto_14
.end method

.method checkFieldAndSelectCurrentWord()Z
    .registers 3

    .prologue
    .line 1943
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1944
    :cond_10
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v0, 0x0

    .line 1953
    :goto_18
    return v0

    .line 1949
    :cond_19
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1951
    invoke-direct {p0}, selectCurrentWord()Z

    move-result v0

    goto :goto_18

    .line 1953
    :cond_26
    const/4 v0, 0x1

    goto :goto_18
.end method

.method createInputContentTypeIfNeeded()V
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_b

    .line 647
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 649
    :cond_b
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_b

    .line 653
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 655
    :cond_b
    return-void
.end method

.method public endBatchEdit()V
    .registers 4

    .prologue
    .line 1449
    const/4 v2, 0x0

    iput-boolean v2, p0, mInBatchEditControllers:Z

    .line 1450
    iget-object v0, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1451
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_12

    .line 1452
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1453
    .local v1, "nesting":I
    if-nez v1, :cond_12

    .line 1454
    invoke-virtual {p0, v0}, finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1457
    .end local v1    # "nesting":I
    :cond_12
    return-void
.end method

.method ensureEndedBatchEdit()V
    .registers 3

    .prologue
    .line 1460
    iget-object v0, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1461
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_e

    .line 1462
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1463
    invoke-virtual {p0, v0}, finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1465
    :cond_e
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v2, -0x1

    .line 1487
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractedTextModeWillBeStarted()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2000
    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2001
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2002
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    .line 2004
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_16
    return v1
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .registers 3
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .prologue
    .line 1468
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1469
    iget-object v0, p0, mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 1471
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_12

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_1e

    .line 1472
    :cond_12
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1473
    invoke-virtual {p0}, reportExtractedText()Z

    .line 1480
    :cond_1a
    :goto_1a
    invoke-direct {p0}, sendUpdateSelection()V

    .line 1481
    return-void

    .line 1474
    :cond_1e
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1a

    .line 1476
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_1a
.end method

.method forgetUndoRedo()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 372
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/UndoOwner;

    const/4 v1, 0x0

    iget-object v2, p0, mUndoOwner:Landroid/content/UndoOwner;

    aput-object v2, v0, v1

    .line 373
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 374
    iget-object v1, p0, mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 375
    return-void
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2148
    iget-boolean v2, p0, mInsertionControllerEnabled:Z

    if-nez v2, :cond_6

    .line 2159
    :goto_5
    return-object v1

    .line 2152
    :cond_6
    iget-object v2, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v2, :cond_1c

    .line 2153
    new-instance v2, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2155
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2156
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2159
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v1, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    goto :goto_5
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .registers 3

    .prologue
    .line 2163
    iget-boolean v1, p0, mSelectionControllerEnabled:Z

    if-nez v1, :cond_6

    .line 2164
    const/4 v1, 0x0

    .line 2174
    :goto_5
    return-object v1

    .line 2167
    :cond_6
    iget-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1c

    .line 2168
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2170
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2171
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2174
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    goto :goto_5
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .registers 3

    .prologue
    .line 960
    iget-object v0, p0, mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_11

    .line 961
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, mWordIterator:Landroid/text/method/WordIterator;

    .line 963
    :cond_11
    iget-object v0, p0, mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .registers 2

    .prologue
    .line 2137
    iget-boolean v0, p0, mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .registers 2

    .prologue
    .line 2144
    iget-boolean v0, p0, mSelectionControllerEnabled:Z

    return v0
.end method

.method hideCursorAndSpanControllers()V
    .registers 1

    .prologue
    .line 703
    invoke-direct {p0}, hideCursorControllers()V

    .line 704
    invoke-direct {p0}, hideSpanControllers()V

    .line 705
    return-void
.end method

.method hideInsertionPointCursorController()V
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_9

    .line 695
    iget-object v0, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 697
    :cond_9
    return-void
.end method

.method invalidateTextDisplayList()V
    .registers 4

    .prologue
    .line 1834
    iget-object v1, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v1, :cond_1a

    .line 1835
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 1836
    iget-object v1, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    iget-object v1, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1835
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1839
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .registers 14
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1805
    iget-object v8, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v8, :cond_38

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_38

    .line 1806
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1807
    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, "lastLine":I
    move-object v3, p1

    .line 1809
    check-cast v3, Landroid/text/DynamicLayout;

    .line 1810
    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 1811
    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 1812
    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 1814
    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    .line 1816
    .local v5, "i":I
    :goto_20
    if-ge v5, v7, :cond_26

    .line 1817
    aget v8, v0, v5

    if-lt v8, v4, :cond_39

    .line 1822
    :cond_26
    :goto_26
    if-ge v5, v7, :cond_38

    .line 1823
    aget v1, v2, v5

    .line 1824
    .local v1, "blockIndex":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_34

    .line 1825
    iget-object v8, p0, mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v8, v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 1827
    :cond_34
    aget v8, v0, v5

    if-lt v8, v6, :cond_3c

    .line 1831
    .end local v0    # "blockEndLines":[I
    .end local v1    # "blockIndex":I
    .end local v2    # "blockIndices":[I
    .end local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v4    # "firstLine":I
    .end local v5    # "i":I
    .end local v6    # "lastLine":I
    .end local v7    # "numberOfBlocks":I
    :cond_38
    return-void

    .line 1818
    .restart local v0    # "blockEndLines":[I
    .restart local v2    # "blockIndices":[I
    .restart local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v4    # "firstLine":I
    .restart local v5    # "i":I
    .restart local v6    # "lastLine":I
    .restart local v7    # "numberOfBlocks":I
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 1828
    .restart local v1    # "blockIndex":I
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    .line 1829
    goto :goto_26
.end method

.method isCursorVisible()Z
    .registers 2

    .prologue
    .line 659
    iget-boolean v0, p0, mCursorVisible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method makeBlink()V
    .registers 7

    .prologue
    .line 2261
    invoke-direct {p0}, shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mShowCursor:J

    .line 2263
    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_18

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    .line 2264
    :cond_18
    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2265
    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2269
    :cond_2b
    :goto_2b
    return-void

    .line 2267
    :cond_2c
    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2b

    iget-object v0, p0, mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2b
.end method

.method onAttachedToWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 411
    iget-boolean v1, p0, mShowErrorAfterAttach:Z

    if-eqz v1, :cond_b

    .line 412
    invoke-direct {p0}, showError()V

    .line 413
    iput-boolean v3, p0, mShowErrorAfterAttach:Z

    .line 415
    :cond_b
    iput-boolean v3, p0, mTemporaryDetach:Z

    .line 417
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 420
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1c

    .line 421
    iget-object v1, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 423
    :cond_1c
    iget-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2a

    .line 424
    iget-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 425
    iget-object v1, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 427
    :cond_2a
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v3, v1, v4}, updateSpellCheckSpans(IIZ)V

    .line 430
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_55

    .line 435
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 438
    invoke-virtual {p0}, startSelectionActionMode()Z

    .line 441
    :cond_55
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v4}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 442
    invoke-direct {p0}, resumeBlink()V

    .line 443
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 2218
    iget-object v0, p0, mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_11

    .line 2219
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 2224
    :goto_b
    iget-object v0, p0, mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2225
    return-void

    .line 2221
    :cond_11
    iget-object v0, p0, mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    # invokes: Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$400(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_b
.end method

.method onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 448
    iget-object v0, p0, mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 449
    invoke-direct {p0}, hideError()V

    .line 452
    :cond_11
    invoke-direct {p0}, suspendBlink()V

    .line 454
    iget-object v0, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1d

    .line 455
    iget-object v0, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 458
    :cond_1d
    iget-object v0, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_26

    .line 459
    iget-object v0, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 462
    :cond_26
    iget-object v0, p0, mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_31

    .line 463
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    iget-object v1, p0, mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 467
    :cond_31
    iget-object v0, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    .line 468
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    iget-object v1, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 471
    :cond_3c
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    iget-object v1, p0, mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 473
    invoke-direct {p0}, destroyDisplayListsData()V

    .line 475
    iget-object v0, p0, mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_52

    .line 476
    iget-object v0, p0, mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, mSpellChecker:Landroid/widget/SpellChecker;

    .line 482
    :cond_52
    const/4 v0, 0x1

    iput-boolean v0, p0, mPreserveDetachedSelection:Z

    .line 483
    invoke-virtual {p0}, hideCursorAndSpanControllers()V

    .line 484
    invoke-virtual {p0}, stopTextActionMode()V

    .line 485
    iput-boolean v2, p0, mPreserveDetachedSelection:Z

    .line 486
    iput-boolean v2, p0, mTemporaryDetach:Z

    .line 487
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1629
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 1630
    .local v3, "selectionStart":I
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 1632
    .local v2, "selectionEnd":I
    iget-object v1, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1633
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_2d

    iget v4, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v4, :cond_2d

    .line 1634
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1635
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2d

    .line 1636
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1637
    iget-boolean v4, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v4, :cond_2a

    iget-boolean v4, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v4, :cond_2d

    .line 1641
    :cond_2a
    invoke-virtual {p0}, reportExtractedText()Z

    .line 1647
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    iget-object v4, p0, mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v4, :cond_36

    .line 1648
    iget-object v4, p0, mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v4, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 1651
    :cond_36
    if-eqz p3, :cond_4e

    if-ne v3, v2, :cond_4e

    iget v4, p0, mCursorCount:I

    if-lez v4, :cond_4e

    .line 1652
    invoke-direct {p0, p1, p5}, drawCursor(Landroid/graphics/Canvas;I)V

    .line 1655
    iget-boolean v4, p0, mSelectionActionMode:Z

    if-eqz v4, :cond_4d

    .line 1656
    iget-object v4, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1657
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1659
    :cond_4d
    const/4 p3, 0x0

    .line 1662
    :cond_4e
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1663
    invoke-direct/range {p0 .. p5}, drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 1668
    :goto_5f
    return-void

    .line 1666
    :cond_60
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_5f
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .registers 27
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 2347
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2348
    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 2351
    .local v3, "clipData":Landroid/content/ClipData;
    if-nez v3, :cond_1b

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    .line 2423
    :goto_1a
    return-void

    .line 2357
    :cond_1b
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .line 2358
    .local v11, "itemCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_20
    if-ge v9, v11, :cond_40

    .line 2359
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 2360
    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledTextForEditor(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 2361
    .local v20, "str":Ljava/lang/CharSequence;
    if-eqz v20, :cond_3d

    .line 2362
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2358
    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 2366
    .end local v10    # "item":Landroid/content/ClipData$Item;
    .end local v20    # "str":Ljava/lang/CharSequence;
    :cond_40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-nez v22, :cond_52

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    goto :goto_1a

    .line 2372
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    .line 2374
    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .line 2375
    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2376
    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    move/from16 v22, v0

    if-eqz v22, :cond_72

    move-object v6, v12

    .line 2377
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .line 2379
    :cond_72
    if-eqz v6, :cond_a8

    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a8

    const/4 v5, 0x1

    .line 2382
    .local v5, "dragDropIntoItself":Z
    :goto_85
    if-eqz v5, :cond_aa

    .line 2383
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_aa

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_aa

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    goto/16 :goto_1a

    .line 2379
    .end local v5    # "dragDropIntoItself":Z
    :cond_a8
    const/4 v5, 0x0

    goto :goto_85

    .line 2391
    .restart local v5    # "dragDropIntoItself":Z
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .line 2392
    .local v17, "originalLength":I
    move/from16 v14, v16

    .line 2393
    .local v14, "min":I
    move/from16 v13, v16

    .line 2395
    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2398
    if-eqz v5, :cond_158

    .line 2399
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2400
    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2401
    .local v7, "dragSourceEnd":I
    if-gt v13, v8, :cond_f4

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    sub-int v19, v22, v17

    .line 2404
    .local v19, "shift":I
    add-int v8, v8, v19

    .line 2405
    add-int v7, v7, v19

    .line 2409
    .end local v19    # "shift":I
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2412
    const/16 v22, 0x0

    add-int/lit8 v23, v8, -0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 2413
    .local v18, "prevCharIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    add-int/lit8 v23, v8, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2414
    .local v15, "nextCharIdx":I
    add-int/lit8 v22, v18, 0x1

    move/from16 v0, v22

    if-le v15, v0, :cond_158

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 2416
    .local v21, "t":Ljava/lang/CharSequence;
    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_158

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v22

    if-eqz v22, :cond_158

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2422
    .end local v7    # "dragSourceEnd":I
    .end local v8    # "dragSourceStart":I
    .end local v15    # "nextCharIdx":I
    .end local v18    # "prevCharIdx":I
    .end local v21    # "t":Ljava/lang/CharSequence;
    :cond_158
    move-object/from16 v0, p0

    iget-object v0, v0, mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnDragResult(Z)V

    goto/16 :goto_1a
.end method

.method onFocusChanged(ZI)V
    .registers 13
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, mShowCursor:J

    .line 1161
    invoke-virtual {p0}, ensureEndedBatchEdit()V

    .line 1163
    if-eqz p1, :cond_a4

    .line 1164
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1165
    .local v4, "selStart":I
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1169
    .local v3, "selEnd":I
    iget-boolean v5, p0, mSelectAllOnFocus:Z

    if-eqz v5, :cond_a0

    if-nez v4, :cond_a0

    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_a0

    move v0, v6

    .line 1172
    .local v0, "isFocusHighlighted":Z
    :goto_2c
    iget-boolean v5, p0, mFrozenWithFocus:Z

    if-eqz v5, :cond_a2

    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_a2

    if-nez v0, :cond_a2

    move v5, v6

    :goto_3b
    iput-boolean v5, p0, mCreatedWithASelection:Z

    .line 1175
    iget-boolean v5, p0, mFrozenWithFocus:Z

    if-eqz v5, :cond_45

    if-ltz v4, :cond_45

    if-gez v3, :cond_91

    .line 1178
    :cond_45
    invoke-direct {p0}, getLastTapPosition()I

    move-result v1

    .line 1179
    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_56

    .line 1180
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1184
    :cond_56
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 1185
    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_6b

    .line 1186
    iget-object v8, p0, mTextView:Landroid/widget/TextView;

    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1194
    :cond_6b
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-nez v5, :cond_77

    iget-boolean v5, p0, mSelectionMoved:Z

    if-eqz v5, :cond_86

    :cond_77
    if-ltz v4, :cond_86

    if-ltz v3, :cond_86

    .line 1205
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1208
    :cond_86
    iget-boolean v5, p0, mSelectAllOnFocus:Z

    if-eqz v5, :cond_8f

    .line 1209
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    .line 1212
    :cond_8f
    iput-boolean v6, p0, mTouchFocusSelected:Z

    .line 1215
    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_91
    iput-boolean v7, p0, mFrozenWithFocus:Z

    .line 1216
    iput-boolean v7, p0, mSelectionMoved:Z

    .line 1218
    iget-object v5, p0, mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_9c

    .line 1219
    invoke-direct {p0}, showError()V

    .line 1222
    :cond_9c
    invoke-virtual {p0}, makeBlink()V

    .line 1250
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_9f
    :goto_9f
    return-void

    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_a0
    move v0, v7

    .line 1169
    goto :goto_2c

    .restart local v0    # "isFocusHighlighted":Z
    :cond_a2
    move v5, v7

    .line 1172
    goto :goto_3b

    .line 1224
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_a4
    iget-object v5, p0, mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_ab

    .line 1225
    invoke-direct {p0}, hideError()V

    .line 1228
    :cond_ab
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1230
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v5

    if-eqz v5, :cond_df

    .line 1233
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1234
    .restart local v4    # "selStart":I
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1235
    .restart local v3    # "selEnd":I
    invoke-virtual {p0}, hideCursorAndSpanControllers()V

    .line 1236
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1237
    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1246
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :goto_d5
    iget-object v5, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_9f

    .line 1247
    iget-object v5, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_9f

    .line 1239
    :cond_df
    iget-boolean v5, p0, mTemporaryDetach:Z

    if-eqz v5, :cond_e5

    iput-boolean v6, p0, mPreserveDetachedSelection:Z

    .line 1240
    :cond_e5
    invoke-virtual {p0}, hideCursorAndSpanControllers()V

    .line 1241
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1242
    iget-boolean v5, p0, mTemporaryDetach:Z

    if-eqz v5, :cond_f1

    iput-boolean v7, p0, mPreserveDetachedSelection:Z

    .line 1243
    :cond_f1
    invoke-direct {p0}, downgradeEasyCorrectionSpans()V

    goto :goto_d5
.end method

.method onLocaleChanged()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 952
    iput-object v0, p0, mWordIterator:Landroid/text/method/WordIterator;

    .line 953
    iput-object v0, p0, mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 954
    return-void
.end method

.method onScreenStateChanged(I)V
    .registers 2
    .param p1, "screenState"    # I

    .prologue
    .line 747
    packed-switch p1, :pswitch_data_c

    .line 755
    :goto_3
    return-void

    .line 749
    :pswitch_4
    invoke-direct {p0}, resumeBlink()V

    goto :goto_3

    .line 752
    :pswitch_8
    invoke-direct {p0}, suspendBlink()V

    goto :goto_3

    .line 747
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method onScrollChanged()V
    .registers 2

    .prologue
    .line 2237
    iget-object v0, p0, mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_9

    .line 2238
    iget-object v0, p0, mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 2240
    :cond_9
    iget-object v0, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_12

    .line 2241
    iget-object v0, p0, mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 2243
    :cond_12
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1342
    invoke-direct {p0, p1}, updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 1344
    invoke-virtual {p0}, hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1345
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1348
    :cond_12
    iget-object v1, p0, mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1f

    .line 1349
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    iget-object v2, p0, mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1350
    iput-object v4, p0, mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1353
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    .line 1372
    :cond_26
    :goto_26
    return-void

    .line 1355
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, mLastDownPositionX:F

    .line 1356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, mLastDownPositionY:F

    .line 1360
    iput-boolean v3, p0, mTouchFocusSelected:Z

    .line 1361
    iput-boolean v3, p0, mIgnoreActionUpEvent:Z

    goto :goto_26

    .line 1364
    :pswitch_38
    iget-boolean v1, p0, mShowSoftInputOnFocus:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHideSoftInput()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1365
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1366
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_26

    .line 1367
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_26

    .line 1353
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_27
        :pswitch_38
    .end packed-switch
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2087
    iget-boolean v3, p0, mSelectAllOnFocus:Z

    if-eqz v3, :cond_68

    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_68

    const/4 v1, 0x1

    .line 2088
    .local v1, "selectAllGotFocus":Z
    :goto_d
    invoke-virtual {p0}, hideCursorAndSpanControllers()V

    .line 2089
    invoke-virtual {p0}, stopTextActionMode()V

    .line 2090
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2091
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_67

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_67

    .line 2093
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2094
    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2095
    iget-object v3, p0, mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_3d

    .line 2097
    iget-object v3, p0, mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 2100
    :cond_3d
    invoke-virtual {p0}, extractedTextModeWillBeStarted()Z

    move-result v3

    if-nez v3, :cond_67

    .line 2101
    invoke-direct {p0}, isCursorInsideEasyCorrectionSpan()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 2103
    iget-object v3, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_54

    .line 2104
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    iget-object v4, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2107
    :cond_54
    new-instance v3, Landroid/widget/Editor$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2113
    iget-object v3, p0, mTextView:Landroid/widget/TextView;

    iget-object v4, p0, mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2120
    .end local v0    # "offset":I
    :cond_67
    :goto_67
    return-void

    .line 2087
    .end local v1    # "selectAllGotFocus":Z
    :cond_68
    const/4 v1, 0x0

    goto :goto_d

    .line 2115
    .restart local v0    # "offset":I
    .restart local v1    # "selectAllGotFocus":Z
    :cond_6a
    invoke-virtual {p0}, hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 2116
    invoke-virtual {p0}, getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_67
.end method

.method onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1309
    if-eqz p1, :cond_34

    .line 1310
    iget-object v2, p0, mBlink:Landroid/widget/Editor$Blink;

    if-eqz v2, :cond_f

    .line 1311
    iget-object v2, p0, mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v2}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1312
    invoke-virtual {p0}, makeBlink()V

    .line 1314
    :cond_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1315
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    .line 1316
    .local v1, "immFullScreen":Z
    :cond_1c
    iget-object v2, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_33

    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_33

    if-nez v1, :cond_33

    iget-object v2, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_33

    .line 1318
    iget-object v2, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1339
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "immFullScreen":Z
    :cond_33
    :goto_33
    return-void

    .line 1321
    :cond_34
    iget-object v2, p0, mBlink:Landroid/widget/Editor$Blink;

    if-eqz v2, :cond_3d

    .line 1322
    iget-object v2, p0, mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v2}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1324
    :cond_3d
    iget-object v2, p0, mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_45

    .line 1325
    iget-object v2, p0, mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v1, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1328
    :cond_45
    invoke-virtual {p0}, hideCursorAndSpanControllers()V

    .line 1329
    iget-object v2, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_51

    .line 1330
    iget-object v2, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1332
    :cond_51
    iget-object v2, p0, mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v2, :cond_5a

    .line 1333
    iget-object v2, p0, mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v2}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1337
    :cond_5a
    invoke-virtual {p0}, ensureEndedBatchEdit()V

    goto :goto_33
.end method

.method public performLongClick(Z)Z
    .registers 11
    .param p1, "handled"    # Z

    .prologue
    .line 1106
    if-nez p1, :cond_33

    iget v6, p0, mLastDownPositionX:F

    iget v7, p0, mLastDownPositionY:F

    invoke-direct {p0, v6, v7}, isPositionOnText(FF)Z

    move-result v6

    if-nez v6, :cond_33

    iget-boolean v6, p0, mInsertionControllerEnabled:Z

    if-eqz v6, :cond_33

    .line 1108
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    iget v7, p0, mLastDownPositionX:F

    iget v8, p0, mLastDownPositionY:F

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 1110
    .local v3, "offset":I
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1111
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1112
    invoke-virtual {p0}, getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 1114
    invoke-virtual {p0}, startInsertionActionMode()V

    .line 1116
    const/4 p1, 0x1

    .line 1119
    .end local v3    # "offset":I
    :cond_33
    if-nez p1, :cond_6b

    iget-object v6, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_6b

    .line 1121
    invoke-direct {p0}, touchPositionIsInSelection()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 1123
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 1124
    .local v5, "start":I
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1125
    .local v1, "end":I
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1126
    .local v4, "selectedText":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1127
    .local v0, "data":Landroid/content/ClipData;
    new-instance v2, Landroid/widget/Editor$DragLocalState;

    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-direct {v2, v6, v5, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1128
    .local v2, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v0, v7, v2, v8}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1130
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1137
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "end":I
    .end local v2    # "localState":Landroid/widget/Editor$DragLocalState;
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    .end local v5    # "start":I
    :goto_6a
    const/4 p1, 0x1

    .line 1141
    :cond_6b
    if-nez p1, :cond_81

    .line 1142
    invoke-direct {p0}, selectCurrentWordAndStartDrag()Z

    move-result p1

    .line 1143
    invoke-virtual {p0}, startSelectionActionMode()Z

    .line 1144
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    if-eqz v6, :cond_81

    .line 1145
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 1149
    :cond_81
    return p1

    .line 1132
    :cond_82
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1133
    invoke-direct {p0}, selectCurrentWordAndStartDrag()Z

    .line 1134
    invoke-virtual {p0}, startSelectionActionMode()Z

    .line 1135
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_6a
.end method

.method prepareCursorControllers()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 663
    const/4 v3, 0x0

    .line 665
    .local v3, "windowSupportsHandles":Z
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 666
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_22

    move-object v2, v1

    .line 667
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 668
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_21

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v6, v7, :cond_69

    :cond_21
    move v3, v5

    .line 672
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_22
    :goto_22
    if-eqz v3, :cond_6b

    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_6b

    move v0, v5

    .line 673
    .local v0, "enabled":Z
    :goto_2d
    if-eqz v0, :cond_6d

    invoke-virtual {p0}, isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_6d

    move v6, v5

    :goto_36
    iput-boolean v6, p0, mInsertionControllerEnabled:Z

    .line 674
    if-eqz v0, :cond_6f

    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_6f

    :goto_42
    iput-boolean v5, p0, mSelectionControllerEnabled:Z

    .line 676
    iget-boolean v4, p0, mInsertionControllerEnabled:Z

    if-nez v4, :cond_56

    .line 677
    invoke-virtual {p0}, hideInsertionPointCursorController()V

    .line 678
    iget-object v4, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_56

    .line 679
    iget-object v4, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 680
    iput-object v8, p0, mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 684
    :cond_56
    iget-boolean v4, p0, mSelectionControllerEnabled:Z

    if-nez v4, :cond_68

    .line 685
    invoke-virtual {p0}, stopTextActionMode()V

    .line 686
    iget-object v4, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_68

    .line 687
    iget-object v4, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 688
    iput-object v8, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 691
    :cond_68
    return-void

    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_69
    move v3, v4

    .line 668
    goto :goto_22

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6b
    move v0, v4

    .line 672
    goto :goto_2d

    .restart local v0    # "enabled":Z
    :cond_6d
    move v6, v4

    .line 673
    goto :goto_36

    :cond_6f
    move v5, v4

    .line 674
    goto :goto_42
.end method

.method redo()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 396
    iget-boolean v1, p0, mAllowUndo:Z

    if-nez v1, :cond_6

    .line 401
    :goto_5
    return-void

    .line 399
    :cond_6
    new-array v0, v3, [Landroid/content/UndoOwner;

    const/4 v1, 0x0

    iget-object v2, p0, mUndoOwner:Landroid/content/UndoOwner;

    aput-object v2, v0, v1

    .line 400
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    goto :goto_5
.end method

.method public removeMessage()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3911
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    if-nez v0, :cond_d

    .line 3927
    :cond_c
    :goto_c
    return-void

    .line 3915
    :cond_d
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3916
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3918
    :cond_22
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3919
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3921
    :cond_37
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3922
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3924
    :cond_4c
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3925
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_c
.end method

.method replace()V
    .registers 4

    .prologue
    .line 404
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 405
    .local v0, "middle":I
    invoke-virtual {p0}, stopTextActionMode()V

    .line 406
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 407
    invoke-virtual {p0}, showSuggestions()V

    .line 408
    return-void
.end method

.method reportExtractedText()Z
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1567
    iget-object v8, p0, mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1568
    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_47

    .line 1569
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1570
    .local v6, "contentChanged":Z
    if-nez v6, :cond_e

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_47

    .line 1571
    :cond_e
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1572
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 1573
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 1574
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_47

    .line 1575
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1576
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_47

    .line 1581
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_25

    if-nez v6, :cond_25

    .line 1582
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1584
    :cond_25
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1592
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1593
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1594
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1595
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1596
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1597
    const/4 v0, 0x1

    .line 1603
    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6    # "contentChanged":Z
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_46
    return v0

    :cond_47
    move v0, v9

    goto :goto_46
.end method

.method restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .registers 5
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 363
    iget-object v1, p0, mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 365
    iget-object v1, p0, mUndoManager:Landroid/content/UndoManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, mUndoOwner:Landroid/content/UndoOwner;

    .line 366
    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .registers 4

    .prologue
    .line 353
    new-instance v1, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 354
    .local v1, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v0}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 356
    iget-object v2, p0, mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v0}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 357
    return-object v1
.end method

.method sendOnTextChanged(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "after"    # I

    .prologue
    .line 1274
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, updateSpellCheckSpans(IIZ)V

    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, mUpdateWordIteratorText:Z

    .line 1279
    invoke-virtual {p0}, removeMessage()V

    .line 1284
    invoke-direct {p0}, hideCursorControllers()V

    .line 1286
    iget-object v0, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_18

    .line 1287
    iget-object v0, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1289
    :cond_18
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1290
    return-void
.end method

.method public sendToDictionary(Ljava/lang/String;II)V
    .registers 11
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v6, 0x20

    .line 6429
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 6430
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6431
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 6432
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6433
    const-string v4, "keyword"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6435
    :try_start_25
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_2e} :catch_2f

    .line 6451
    :cond_2e
    :goto_2e
    return-void

    .line 6436
    :catch_2f
    move-exception v0

    .line 6437
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "Editor"

    const-string v5, "Fail to launch dictionary."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 6440
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_38
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6441
    const-string v4, "keyword"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6442
    const-string v4, "force"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6444
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 6445
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2e

    .line 6446
    iget-object v4, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2e
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mError:Ljava/lang/CharSequence;

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, mErrorWasChanged:Z

    .line 537
    iget-object v0, p0, mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_28

    .line 538
    invoke-direct {p0, v1}, setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 539
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_24

    .line 540
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 541
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 544
    :cond_22
    iput-object v1, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 546
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, mShowErrorAfterAttach:Z

    .line 553
    :cond_27
    :goto_27
    return-void

    .line 548
    :cond_28
    invoke-direct {p0, p2}, setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 549
    iget-object v0, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 550
    invoke-direct {p0}, showError()V

    goto :goto_27
.end method

.method setFrame()V
    .registers 8

    .prologue
    .line 814
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_2e

    .line 815
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 816
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 817
    iget-object v0, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, getErrorX()I

    move-result v2

    invoke-direct {p0}, getErrorY()I

    move-result v3

    iget-object v4, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 820
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_2e
    return-void
.end method

.method setWBPositionListenerEnalbed(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 6465
    if-eqz p1, :cond_18

    .line 6466
    iget-object v0, p0, mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    if-nez v0, :cond_d

    .line 6467
    new-instance v0, Landroid/widget/Editor$3;

    invoke-direct {v0, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    .line 6479
    :cond_d
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 6486
    :cond_17
    :goto_17
    return-void

    .line 6481
    :cond_18
    iget-object v0, p0, mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    if-eqz v0, :cond_17

    .line 6482
    invoke-direct {p0}, getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6483
    const/4 v0, 0x0

    iput-object v0, p0, mWBPositionListener:Landroid/widget/Editor$TextViewPositionListener;

    goto :goto_17
.end method

.method showSuggestions()V
    .registers 2

    .prologue
    .line 2228
    iget-object v0, p0, mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_b

    .line 2229
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2231
    :cond_b
    invoke-virtual {p0}, hideCursorAndSpanControllers()V

    .line 2232
    invoke-virtual {p0}, stopTextActionMode()V

    .line 2233
    iget-object v0, p0, mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 2234
    return-void
.end method

.method startInsertionActionMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1874
    iget-object v1, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    .line 1875
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    iget-object v2, p0, mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1877
    :cond_c
    invoke-virtual {p0}, extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1895
    :cond_12
    :goto_12
    return-void

    .line 1880
    :cond_13
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1882
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v0, p0, v3}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    .line 1884
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iput-boolean v3, p0, mSelectionActionMode:Z

    .line 1885
    iget-boolean v1, p0, mThemeIsDeviceDefault:Z

    if-eqz v1, :cond_3d

    .line 1886
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    const/16 v2, 0x63

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, mTextActionMode:Landroid/view/ActionMode;

    .line 1892
    :goto_2b
    iget-object v1, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_12

    invoke-virtual {p0}, getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1893
    invoke-virtual {p0}, getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_12

    .line 1889
    :cond_3d
    iget-object v1, p0, mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, mTextActionMode:Landroid/view/ActionMode;

    goto :goto_2b
.end method

.method startSelectionActionMode()Z
    .registers 3

    .prologue
    .line 1905
    invoke-direct {p0}, startSelectionActionModeInternal()Z

    move-result v0

    .line 1906
    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_e

    .line 1907
    invoke-virtual {p0}, getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 1911
    :cond_d
    :goto_d
    return v0

    .line 1908
    :cond_e
    invoke-virtual {p0}, getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1909
    invoke-virtual {p0}, getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_d
.end method

.method stopCursorBlink(Z)V
    .registers 2
    .param p1, "stop"    # Z

    .prologue
    .line 6455
    if-eqz p1, :cond_6

    .line 6456
    invoke-direct {p0}, suspendBlink()V

    .line 6460
    :goto_5
    return-void

    .line 6458
    :cond_6
    invoke-direct {p0}, resumeBlink()V

    goto :goto_5
.end method

.method protected stopTextActionMode()V
    .registers 2

    .prologue
    .line 2123
    iget-object v0, p0, mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_15

    .line 2125
    const/4 v0, 0x0

    iput-boolean v0, p0, mSelectionActionMode:Z

    .line 2126
    iget-object v0, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_10

    .line 2127
    iget-object v0, p0, mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 2129
    :cond_10
    iget-object v0, p0, mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2131
    :cond_15
    return-void
.end method

.method undo()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 388
    iget-boolean v1, p0, mAllowUndo:Z

    if-nez v1, :cond_6

    .line 393
    :goto_5
    return-void

    .line 391
    :cond_6
    new-array v0, v3, [Landroid/content/UndoOwner;

    const/4 v1, 0x0

    iget-object v2, p0, mUndoOwner:Landroid/content/UndoOwner;

    aput-object v2, v0, v1

    .line 392
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    goto :goto_5
.end method

.method updateCursorsPositions()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x2

    .line 1842
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v7, :cond_c

    .line 1843
    iput v10, p0, mCursorCount:I

    .line 1868
    :cond_b
    :goto_b
    return-void

    .line 1847
    :cond_c
    invoke-direct {p0}, getActiveLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1848
    .local v2, "layout":Landroid/text/Layout;
    iget-object v7, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 1849
    .local v5, "offset":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1850
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1851
    .local v6, "top":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1853
    .local v0, "bottom":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    if-eqz v7, :cond_4d

    move v7, v8

    :goto_2b
    iput v7, p0, mCursorCount:I

    .line 1855
    move v4, v0

    .line 1856
    .local v4, "middle":I
    iget v7, p0, mCursorCount:I

    if-ne v7, v8, :cond_36

    .line 1858
    add-int v7, v6, v0

    shr-int/lit8 v4, v7, 0x1

    .line 1861
    :cond_36
    invoke-virtual {v2, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v1

    .line 1862
    .local v1, "clamped":Z
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v10, v6, v4, v7}, updateCursorPosition(IIIF)V

    .line 1864
    iget v7, p0, mCursorCount:I

    if-ne v7, v8, :cond_b

    .line 1865
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v9, v4, v0, v7}, updateCursorPosition(IIIF)V

    goto :goto_b

    .end local v1    # "clamped":Z
    .end local v4    # "middle":I
    :cond_4d
    move v7, v9

    .line 1853
    goto :goto_2b
.end method

.method updateSelectionHandler()V
    .registers 1

    .prologue
    .line 1997
    return-void
.end method
