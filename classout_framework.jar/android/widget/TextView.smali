.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$8;,
        Landroid/widget/TextView$StylusEventListener;,
        Landroid/widget/TextView$TouchMonitorListener;,
        Landroid/widget/TextView$MoreInfoHPW;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$TextViewClipboardEventListener;
    }
.end annotation


# static fields
.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field public static final CLIPBOARD_ID:I = 0x5

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field public static final DICTIONARY_ID:I = 0x9

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field static final ID_CLIPBOARD:I = 0x1020057

.field static final ID_CLOSE:I = 0x1020059

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_DELETE:I = 0x1020058

.field static final ID_DICTIONARY:I = 0x1020055

.field static final ID_MULTI_SELECT_ALL:I = 0x102005d

.field static final ID_MULTI_SELECT_COPY:I = 0x102005e

.field static final ID_MULTI_SELECT_DICTIONARY:I = 0x102005f

.field static final ID_MULTI_SELECT_SHARE:I = 0x1020061

.field static final ID_MULTI_SELECT_TRANSLATE:I = 0x1020060

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field static final ID_WEBSEARCH:I = 0x10204f9

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field public static final SHARE_ID:I = 0x7

.field private static final SIGNED:I = 0x2

.field private static final STRIKE_ANIMATION_DURATION:I = 0x190

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field public static final TRANSLATE_ID:I = 0x6

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000

.field public static final WEBSEARCH_ID:I = 0x8

.field private static final emailPattern:Ljava/util/regex/Pattern;

.field private static mCurTime:J

.field private static mIsFindTargetView:Z

.field private static mLastHoveredTime:J

.field private static mLastHoveredView:Landroid/widget/TextView;

.field private static mLastPenDownTime:J

.field private static mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

.field private static mShowPenSelectionRunnable:Ljava/lang/Runnable;

.field private static mTargetView:Landroid/widget/TextView;

.field static sLastCutCopyOrTextChangedTime:J

.field private static final urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final HOVER_INTERVAL:I

.field private SEC_CLIPBOARD_DISABLED:I

.field private SEC_CLIPBOARD_ENABLED:I

.field private SEC_CLIPBOARD_UNKNOWN:I

.field private TOUCH_DELTA:F

.field private doShowingHermes:Z

.field private fromResLock:Z

.field private final isElasticEnabled:Z

.field private mAllowTransformationLengthChange:Z

.field private mAttachedWindow:Z

.field private mAutoLinkMask:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mCanSelectText:Z

.field private mCanTextMultiSelection:Z

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mChangedSelectionBySIP:Z

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mClipboardDataFormat:I

.field private mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field mCursorWidth:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field private mDisplayText:Ljava/lang/CharSequence;

.field private mDrawStrikeAnimationValue:F

.field private mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsisKeywordCount:I

.field private mEllipsisKeywordStart:I

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnableClipboard:Z

.field private mEnableDictionary:Z

.field private mEnableLinkPreview:Z

.field private mEnableMultiSelection:Z

.field private mEnableShare:Z

.field private mEnableWebSearch:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstTouch:Z

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mHideSoftInput:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHoverEnterTime:J

.field private mHoverExitTime:J

.field private mHoveredSpan:Ljava/lang/Object;

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIsSecClipboardEnabled:I

.field mIsTouchDown:Z

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLastTouchUpTime:J

.field private mLayout:Landroid/text/Layout;

.field private mLineIsDrawed:Z

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mMultiHighlightColor:I

.field private mMultiHighlightPaint:Landroid/graphics/Paint;

.field private mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field protected mOnDragResult:Z

.field protected mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

.field private mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSkipDrawTextStrike:Z

.field private mSkipUpdateDisplayText:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mStrikeThroughPaint:Landroid/graphics/Paint;

.field private mStringName:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTextStrikeThroughEnabled:Z

.field protected mToolType:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUseDisplayText:Z

.field private mUserSetTextScaleX:Z

.field private mWBMaxLength:I

.field private mWBTextBuffer:Ljava/lang/CharSequence;

.field private mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

.field private mhasMultiSelection:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 369
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, TEMP_RECTF:Landroid/graphics/RectF;

    .line 375
    new-array v1, v4, [Landroid/text/InputFilter;

    sput-object v1, NO_FILTERS:[Landroid/text/InputFilter;

    .line 376
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, EMPTY_SPANNED:Landroid/text/Spanned;

    .line 381
    new-array v1, v5, [I

    const v2, 0x101034d

    aput v2, v1, v4

    sput-object v1, MULTILINE_STATE_SET:[I

    .line 805
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sput-object v1, urlPattern:Ljava/util/regex/Pattern;

    .line 806
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    sput-object v1, emailPattern:Ljava/util/regex/Pattern;

    .line 896
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 897
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 899
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 7948
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 12792
    sput-object v3, mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .line 12973
    sput-object v3, mLastHoveredView:Landroid/widget/TextView;

    .line 12974
    sput-object v3, mTargetView:Landroid/widget/TextView;

    .line 12975
    sput-boolean v4, mIsFindTargetView:Z

    .line 12976
    sput-wide v6, mLastHoveredTime:J

    .line 12977
    sput-wide v6, mLastPenDownTime:J

    .line 12978
    sput-wide v6, mCurTime:J

    .line 12979
    sput-object v3, mShowPenSelectionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 923
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 924
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 927
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 928
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 931
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 932
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 78
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 937
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 347
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mCursorWidth:I

    .line 413
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mChangedSelectionBySIP:Z

    .line 418
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, fromResLock:Z

    .line 420
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mEditableFactory:Landroid/text/Editable$Factory;

    .line 421
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 437
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mEllipsisKeywordStart:I

    .line 438
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mEllipsisKeywordCount:I

    .line 441
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mToolType:I

    .line 445
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, isElasticEnabled:Z

    .line 450
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    .line 451
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 454
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, SEC_CLIPBOARD_UNKNOWN:I

    .line 455
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, SEC_CLIPBOARD_DISABLED:I

    .line 456
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, SEC_CLIPBOARD_ENABLED:I

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, SEC_CLIPBOARD_UNKNOWN:I

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mIsSecClipboardEnabled:I

    .line 460
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mWBMaxLength:I

    .line 465
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    .line 467
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mDrawStrikeAnimationValue:F

    .line 469
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mTextStrikeThroughEnabled:Z

    .line 470
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLineIsDrawed:Z

    .line 471
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSkipDrawTextStrike:Z

    .line 748
    const/16 v70, 0x3

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMarqueeRepeatLimit:I

    .line 750
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mLastLayoutDirection:I

    .line 757
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMarqueeFadeMode:I

    .line 770
    sget-object v70, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mBufferType:Landroid/widget/TextView$BufferType;

    .line 782
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mDisplayText:Ljava/lang/CharSequence;

    .line 783
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mUseDisplayText:Z

    .line 784
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSkipUpdateDisplayText:Z

    .line 785
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mhasMultiSelection:Z

    .line 786
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEnableMultiSelection:Z

    .line 787
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEnableLinkPreview:Z

    .line 788
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCanTextMultiSelection:Z

    .line 790
    const v70, -0x66ff8747

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMultiHighlightColor:I

    .line 793
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, doShowingHermes:Z

    .line 794
    const/16 v70, 0x12c

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, HOVER_INTERVAL:I

    .line 795
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mHoveredSpan:Ljava/lang/Object;

    .line 796
    const-wide/16 v70, -0x1

    move-wide/from16 v0, v70

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverEnterTime:J

    .line 797
    const-wide/16 v70, -0x1

    move-wide/from16 v0, v70

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverExitTime:J

    .line 798
    const/high16 v70, 0x41400000    # 12.0f

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, TOUCH_DELTA:F

    .line 800
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 802
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    .line 803
    invoke-static {}, Lcom/samsung/android/penselect/PenSelectionController;->getInstance()Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    .line 815
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLocaleChanged:Z

    .line 817
    const v70, 0x800033

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mGravity:I

    .line 822
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLinksClickable:Z

    .line 824
    const/high16 v70, 0x3f800000    # 1.0f

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mSpacingMult:F

    .line 825
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mSpacingAdd:F

    .line 830
    const v70, 0x7fffffff

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMaximum:I

    .line 831
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMaxMode:I

    .line 832
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMinimum:I

    .line 833
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMinMode:I

    .line 835
    move-object/from16 v0, p0

    iget v0, v0, mMaximum:I

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mOldMaximum:I

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, mMaxMode:I

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mOldMaxMode:I

    .line 838
    const v70, 0x7fffffff

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMaxWidth:I

    .line 839
    const/16 v70, 0x2

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMaxWidthMode:I

    .line 840
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMinWidth:I

    .line 841
    const/16 v70, 0x2

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMinWidthMode:I

    .line 844
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mDesiredHeightAtMeasure:I

    .line 845
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIncludePad:Z

    .line 846
    const/16 v70, -0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mDeferScroll:I

    .line 858
    sget-object v70, NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mFilters:[Landroid/text/InputFilter;

    .line 864
    const v70, 0x6633b5e5

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mHighlightColor:I

    .line 867
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHighlightPathBogus:Z

    .line 869
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFirstTouch:Z

    .line 870
    const-wide/16 v70, 0x0

    move-wide/from16 v0, v70

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastTouchUpTime:J

    .line 6842
    const/16 v70, 0x2

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mClipboardDataFormat:I

    .line 11310
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOnDragResult:Z

    .line 11966
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHideSoftInput:Z

    .line 12787
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsTouchDown:Z

    .line 13381
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCanSelectText:Z

    .line 13382
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEnableShare:Z

    .line 13383
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEnableClipboard:Z

    .line 13384
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEnableDictionary:Z

    .line 13385
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEnableWebSearch:Z

    .line 13466
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mWBTextBuffer:Ljava/lang/CharSequence;

    .line 13720
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->getInstance()Landroid/widget/MultiSelectPopupWindow;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    .line 939
    const-string v70, ""

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mText:Ljava/lang/CharSequence;

    .line 941
    invoke-virtual/range {p0 .. p0}, getResources()Landroid/content/res/Resources;

    move-result-object v54

    .line 942
    .local v54, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v54 .. v54}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v18

    .line 945
    .local v18, "compat":Landroid/content/res/CompatibilityInfo;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 948
    new-instance v70, Landroid/text/TextPaint;

    const/16 v71, 0x1

    invoke-direct/range {v70 .. v71}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mTextPaint:Landroid/text/TextPaint;

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v70, v0

    invoke-virtual/range {v54 .. v54}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v71

    move-object/from16 v0, v71

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v71, v0

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v70, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 952
    new-instance v70, Landroid/graphics/Paint;

    const/16 v71, 0x1

    invoke-direct/range {v70 .. v71}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mHighlightPaint:Landroid/graphics/Paint;

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v70, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 956
    new-instance v70, Landroid/graphics/Paint;

    const/16 v71, 0x1

    invoke-direct/range {v70 .. v71}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mMultiHighlightPaint:Landroid/graphics/Paint;

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, mMultiHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v70, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/text/TextPaint;->density:F

    move/from16 v70, v0

    const/high16 v71, 0x41400000    # 12.0f

    mul-float v70, v70, v71

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, TOUCH_DELTA:F

    .line 961
    invoke-virtual/range {p0 .. p0}, getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mMovement:Landroid/text/method/MovementMethod;

    .line 963
    const/16 v70, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mTransformation:Landroid/text/method/TransformationMethod;

    .line 965
    const/16 v62, 0x0

    .line 966
    .local v62, "textColorHighlight":I
    const/16 v61, 0x0

    .line 967
    .local v61, "textColor":Landroid/content/res/ColorStateList;
    const/16 v63, 0x0

    .line 968
    .local v63, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v64, 0x0

    .line 969
    .local v64, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v65, 0xf

    .line 970
    .local v65, "textSize":I
    const/16 v37, 0x0

    .line 971
    .local v37, "fontFamily":Ljava/lang/String;
    const/16 v38, 0x0

    .line 972
    .local v38, "fontFamilyExplicit":Z
    const/16 v67, -0x1

    .line 973
    .local v67, "typefaceIndex":I
    const/16 v59, -0x1

    .line 974
    .local v59, "styleIndex":I
    const/4 v7, 0x0

    .line 975
    .local v7, "allCaps":Z
    const/16 v56, 0x0

    .line 976
    .local v56, "shadowcolor":I
    const/16 v29, 0x0

    .local v29, "dx":F
    const/16 v30, 0x0

    .local v30, "dy":F
    const/16 v53, 0x0

    .line 977
    .local v53, "r":F
    const/16 v33, 0x0

    .line 978
    .local v33, "elegant":Z
    const/16 v44, 0x0

    .line 979
    .local v44, "letterSpacing":F
    const/16 v39, 0x0

    .line 980
    .local v39, "fontFeatureSettings":Ljava/lang/String;
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mBreakStrategy:I

    .line 981
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mHyphenationFrequency:I

    .line 983
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v66

    .line 991
    .local v66, "theme":Landroid/content/res/Resources$Theme;
    sget-object v70, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    move-object/from16 v2, v70

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 993
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .line 994
    .local v9, "appearance":Landroid/content/res/TypedArray;
    const/16 v70, 0x0

    const/16 v71, -0x1

    move/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 996
    .local v8, "ap":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 997
    const/16 v70, -0x1

    move/from16 v0, v70

    if-eq v8, v0, :cond_391

    .line 998
    sget-object v70, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v66

    move-object/from16 v1, v70

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1001
    :cond_391
    if-eqz v9, :cond_426

    .line 1002
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v47

    .line 1003
    .local v47, "n":I
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_399
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_423

    .line 1004
    move/from16 v0, v41

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1006
    .local v10, "attr":I
    packed-switch v10, :pswitch_data_e6e

    .line 1003
    :goto_3a8
    add-int/lit8 v41, v41, 0x1

    goto :goto_399

    .line 1008
    :pswitch_3ab
    move/from16 v0, v62

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v62

    .line 1009
    goto :goto_3a8

    .line 1012
    :pswitch_3b2
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v61

    .line 1013
    goto :goto_3a8

    .line 1016
    :pswitch_3b7
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v63

    .line 1017
    goto :goto_3a8

    .line 1020
    :pswitch_3bc
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v64

    .line 1021
    goto :goto_3a8

    .line 1024
    :pswitch_3c1
    move/from16 v0, v65

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v65

    .line 1025
    goto :goto_3a8

    .line 1028
    :pswitch_3c8
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    .line 1029
    goto :goto_3a8

    .line 1032
    :pswitch_3d1
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1033
    goto :goto_3a8

    .line 1036
    :pswitch_3d6
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v59

    .line 1037
    goto :goto_3a8

    .line 1040
    :pswitch_3df
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1041
    goto :goto_3a8

    .line 1044
    :pswitch_3e8
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v56

    .line 1045
    goto :goto_3a8

    .line 1048
    :pswitch_3f1
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 1049
    goto :goto_3a8

    .line 1052
    :pswitch_3fa
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v30

    .line 1053
    goto :goto_3a8

    .line 1056
    :pswitch_403
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v53

    .line 1057
    goto :goto_3a8

    .line 1060
    :pswitch_40c
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 1061
    goto :goto_3a8

    .line 1064
    :pswitch_415
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v44

    .line 1065
    goto :goto_3a8

    .line 1068
    :pswitch_41e
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    goto :goto_3a8

    .line 1073
    .end local v10    # "attr":I
    :cond_423
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1076
    .end local v41    # "i":I
    .end local v47    # "n":I
    :cond_426
    invoke-virtual/range {p0 .. p0}, getDefaultEditable()Z

    move-result v32

    .line 1077
    .local v32, "editable":Z
    const/16 v42, 0x0

    .line 1078
    .local v42, "inputMethod":Ljava/lang/CharSequence;
    const/16 v49, 0x0

    .line 1079
    .local v49, "numeric":I
    const/16 v19, 0x0

    .line 1080
    .local v19, "digits":Ljava/lang/CharSequence;
    const/16 v52, 0x0

    .line 1081
    .local v52, "phone":Z
    const/4 v12, 0x0

    .line 1082
    .local v12, "autotext":Z
    const/4 v11, -0x1

    .line 1083
    .local v11, "autocap":I
    const/4 v14, 0x0

    .line 1084
    .local v14, "buffertype":I
    const/16 v55, 0x0

    .line 1085
    .local v55, "selectallonfocus":Z
    const/16 v22, 0x0

    .local v22, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x0

    .local v28, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .line 1086
    .local v24, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .local v20, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    .local v25, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .line 1087
    .local v21, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    .line 1088
    .local v26, "drawableTint":Landroid/content/res/ColorStateList;
    const/16 v27, 0x0

    .line 1089
    .local v27, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    const/16 v23, 0x0

    .line 1090
    .local v23, "drawablePadding":I
    const/16 v34, -0x1

    .line 1091
    .local v34, "ellipsize":I
    const/16 v57, 0x0

    .line 1092
    .local v57, "singleLine":Z
    const/16 v46, -0x1

    .line 1093
    .local v46, "maxlength":I
    const-string v60, ""

    .line 1094
    .local v60, "text":Ljava/lang/CharSequence;
    const/16 v40, 0x0

    .line 1095
    .local v40, "hint":Ljava/lang/CharSequence;
    const/16 v50, 0x0

    .line 1096
    .local v50, "password":Z
    const/16 v43, 0x0

    .line 1098
    .local v43, "inputType":I
    const/16 v58, -0x1

    .line 1099
    .local v58, "stringID":I
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v70

    const v71, 0x105024e

    invoke-virtual/range {v70 .. v71}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v70

    move/from16 v0, v70

    float-to-int v0, v0

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mCursorWidth:I

    .line 1101
    sget-object v70, Lcom/android/internal/R$styleable;->TextView:[I

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    move-object/from16 v2, v70

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1104
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v47

    .line 1105
    .restart local v47    # "n":I
    const/16 v41, 0x0

    .restart local v41    # "i":I
    :goto_489
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_914

    .line 1106
    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1108
    .restart local v10    # "attr":I
    packed-switch v10, :pswitch_data_e92

    .line 1105
    :cond_498
    :goto_498
    :pswitch_498
    add-int/lit8 v41, v41, 0x1

    goto :goto_489

    .line 1110
    :pswitch_49b
    move/from16 v0, v32

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 1111
    goto :goto_498

    .line 1114
    :pswitch_4a2
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v42

    .line 1115
    goto :goto_498

    .line 1118
    :pswitch_4a7
    move/from16 v0, v49

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v49

    .line 1119
    goto :goto_498

    .line 1122
    :pswitch_4ae
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1123
    goto :goto_498

    .line 1126
    :pswitch_4b3
    move/from16 v0, v52

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    .line 1127
    goto :goto_498

    .line 1130
    :pswitch_4ba
    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 1131
    goto :goto_498

    .line 1134
    :pswitch_4bf
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1135
    goto :goto_498

    .line 1138
    :pswitch_4c4
    invoke-virtual {v6, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 1139
    goto :goto_498

    .line 1142
    :pswitch_4c9
    move/from16 v0, v55

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v55

    .line 1143
    goto :goto_498

    .line 1146
    :pswitch_4d0
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mAutoLinkMask:I

    goto :goto_498

    .line 1150
    :pswitch_4df
    const/16 v70, 0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLinksClickable:Z

    goto :goto_498

    .line 1154
    :pswitch_4ee
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 1155
    goto :goto_498

    .line 1158
    :pswitch_4f3
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 1159
    goto :goto_498

    .line 1162
    :pswitch_4f8
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1163
    goto :goto_498

    .line 1166
    :pswitch_4fd
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1167
    goto :goto_498

    .line 1170
    :pswitch_502
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 1171
    goto :goto_498

    .line 1174
    :pswitch_507
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 1175
    goto :goto_498

    .line 1178
    :pswitch_50c
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v26

    .line 1179
    goto :goto_498

    .line 1182
    :pswitch_511
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v27

    .line 1183
    goto/16 :goto_498

    .line 1186
    :pswitch_523
    move/from16 v0, v23

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    .line 1187
    goto/16 :goto_498

    .line 1190
    :pswitch_52b
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMaxLines(I)V

    goto/16 :goto_498

    .line 1194
    :pswitch_53c
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMaxHeight(I)V

    goto/16 :goto_498

    .line 1198
    :pswitch_54d
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setLines(I)V

    goto/16 :goto_498

    .line 1202
    :pswitch_55e
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setHeight(I)V

    goto/16 :goto_498

    .line 1206
    :pswitch_56f
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMinLines(I)V

    goto/16 :goto_498

    .line 1210
    :pswitch_580
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMinHeight(I)V

    goto/16 :goto_498

    .line 1214
    :pswitch_591
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMaxEms(I)V

    goto/16 :goto_498

    .line 1218
    :pswitch_5a2
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMaxWidth(I)V

    goto/16 :goto_498

    .line 1222
    :pswitch_5b3
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setEms(I)V

    goto/16 :goto_498

    .line 1226
    :pswitch_5c4
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setWidth(I)V

    goto/16 :goto_498

    .line 1230
    :pswitch_5d5
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMinEms(I)V

    goto/16 :goto_498

    .line 1234
    :pswitch_5e6
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMinWidth(I)V

    goto/16 :goto_498

    .line 1238
    :pswitch_5f7
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setGravity(I)V

    goto/16 :goto_498

    .line 1242
    :pswitch_608
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v40

    .line 1243
    sget-boolean v70, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v70, :cond_498

    .line 1244
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v58

    goto/16 :goto_498

    .line 1249
    :pswitch_61a
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v60

    .line 1250
    sget-boolean v70, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v70, :cond_498

    .line 1251
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v58

    goto/16 :goto_498

    .line 1256
    :pswitch_62c
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    if-eqz v70, :cond_498

    .line 1257
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setHorizontallyScrolling(Z)V

    goto/16 :goto_498

    .line 1262
    :pswitch_641
    move/from16 v0, v57

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v57

    .line 1263
    goto/16 :goto_498

    .line 1266
    :pswitch_649
    move/from16 v0, v34

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v34

    .line 1267
    goto/16 :goto_498

    .line 1270
    :pswitch_651
    move-object/from16 v0, p0

    iget v0, v0, mMarqueeRepeatLimit:I

    move/from16 v70, v0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setMarqueeRepeatLimit(I)V

    goto/16 :goto_498

    .line 1274
    :pswitch_666
    const/16 v70, 0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    if-nez v70, :cond_498

    .line 1275
    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setIncludeFontPadding(Z)V

    goto/16 :goto_498

    .line 1280
    :pswitch_67b
    const/16 v70, 0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    if-nez v70, :cond_498

    .line 1281
    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setCursorVisible(Z)V

    goto/16 :goto_498

    .line 1286
    :pswitch_690
    const/16 v70, -0x1

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v46

    .line 1287
    goto/16 :goto_498

    .line 1290
    :pswitch_69a
    const/high16 v70, 0x3f800000    # 1.0f

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setTextScaleX(F)V

    goto/16 :goto_498

    .line 1294
    :pswitch_6ab
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFreezesText:Z

    goto/16 :goto_498

    .line 1298
    :pswitch_6bb
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v56

    .line 1299
    goto/16 :goto_498

    .line 1302
    :pswitch_6c5
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 1303
    goto/16 :goto_498

    .line 1306
    :pswitch_6cf
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v30

    .line 1307
    goto/16 :goto_498

    .line 1310
    :pswitch_6d9
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v53

    .line 1311
    goto/16 :goto_498

    .line 1314
    :pswitch_6e3
    invoke-virtual/range {p0 .. p0}, isEnabled()Z

    move-result v70

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setEnabled(Z)V

    goto/16 :goto_498

    .line 1318
    :pswitch_6f6
    move/from16 v0, v62

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v62

    .line 1319
    goto/16 :goto_498

    .line 1322
    :pswitch_6fe
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v61

    .line 1323
    goto/16 :goto_498

    .line 1326
    :pswitch_704
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v63

    .line 1327
    goto/16 :goto_498

    .line 1330
    :pswitch_70a
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v64

    .line 1331
    goto/16 :goto_498

    .line 1334
    :pswitch_710
    move/from16 v0, v65

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v65

    .line 1335
    goto/16 :goto_498

    .line 1338
    :pswitch_718
    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    .line 1339
    goto/16 :goto_498

    .line 1342
    :pswitch_720
    move/from16 v0, v59

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v59

    .line 1343
    goto/16 :goto_498

    .line 1346
    :pswitch_728
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1347
    const/16 v38, 0x1

    .line 1348
    goto/16 :goto_498

    .line 1351
    :pswitch_730
    move/from16 v0, v50

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v50

    .line 1352
    goto/16 :goto_498

    .line 1355
    :pswitch_738
    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v70, v0

    move/from16 v0, v70

    float-to-int v0, v0

    move/from16 v70, v0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v70

    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v70, v0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mSpacingAdd:F

    goto/16 :goto_498

    .line 1359
    :pswitch_756
    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v70, v0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mSpacingMult:F

    goto/16 :goto_498

    .line 1363
    :pswitch_76a
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    .line 1364
    goto/16 :goto_498

    .line 1367
    :pswitch_774
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v71

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput-boolean v0, v1, Landroid/widget/Editor;->mAllowUndo:Z

    goto/16 :goto_498

    .line 1372
    :pswitch_78d
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v70, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move/from16 v71, v0

    move/from16 v0, v71

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v71

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_498

    .line 1379
    :pswitch_7c5
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v70, v0

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_498

    .line 1385
    :pswitch_7e9
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v70, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v71, v0

    move-object/from16 v0, v71

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move/from16 v71, v0

    move/from16 v0, v71

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v71

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_498

    .line 1392
    :pswitch_821
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_498

    .line 1397
    :pswitch_82e
    const/16 v70, 0x0

    :try_start_830
    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setInputExtras(I)V
    :try_end_83d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_830 .. :try_end_83d} :catch_83f
    .catch Ljava/io/IOException; {:try_start_830 .. :try_end_83d} :catch_84f

    goto/16 :goto_498

    .line 1398
    :catch_83f
    move-exception v31

    .line 1399
    .local v31, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v70, "TextView"

    const-string v71, "Failure reading input extras"

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_498

    .line 1400
    .end local v31    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_84f
    move-exception v31

    .line 1401
    .local v31, "e":Ljava/io/IOException;
    const-string v70, "TextView"

    const-string v71, "Failure reading input extras"

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_498

    .line 1406
    .end local v31    # "e":Ljava/io/IOException;
    :pswitch_85f
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mCursorDrawableRes:I

    goto/16 :goto_498

    .line 1410
    :pswitch_86f
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mTextSelectHandleLeftRes:I

    goto/16 :goto_498

    .line 1414
    :pswitch_87f
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mTextSelectHandleRightRes:I

    goto/16 :goto_498

    .line 1418
    :pswitch_88f
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mTextSelectHandleRes:I

    goto/16 :goto_498

    .line 1423
    :pswitch_89f
    const/16 v70, 0x2

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mClipboardDataFormat:I

    goto/16 :goto_498

    .line 1427
    :pswitch_8af
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mTextEditSuggestionItemLayout:I

    goto/16 :goto_498

    .line 1431
    :pswitch_8bf
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v70

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setTextIsSelectable(Z)V

    goto/16 :goto_498

    .line 1435
    :pswitch_8d0
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1436
    goto/16 :goto_498

    .line 1439
    :pswitch_8da
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 1440
    goto/16 :goto_498

    .line 1443
    :pswitch_8e4
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v44

    .line 1444
    goto/16 :goto_498

    .line 1447
    :pswitch_8ee
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1448
    goto/16 :goto_498

    .line 1451
    :pswitch_8f4
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mBreakStrategy:I

    goto/16 :goto_498

    .line 1455
    :pswitch_904
    const/16 v70, 0x0

    move/from16 v0, v70

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v70

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mHyphenationFrequency:I

    goto/16 :goto_498

    .line 1459
    .end local v10    # "attr":I
    :cond_914
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1461
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 1463
    .local v13, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xfff

    move/from16 v68, v0

    .line 1465
    .local v68, "variation":I
    const/16 v70, 0x81

    move/from16 v0, v68

    move/from16 v1, v70

    if-ne v0, v1, :cond_b50

    const/16 v51, 0x1

    .line 1467
    .local v51, "passwordInputType":Z
    :goto_929
    const/16 v70, 0xe1

    move/from16 v0, v68

    move/from16 v1, v70

    if-ne v0, v1, :cond_b54

    const/16 v69, 0x1

    .line 1469
    .local v69, "webPasswordInputType":Z
    :goto_933
    const/16 v70, 0x12

    move/from16 v0, v68

    move/from16 v1, v70

    if-ne v0, v1, :cond_b58

    const/16 v48, 0x1

    .line 1472
    .local v48, "numberPasswordInputType":Z
    :goto_93d
    if-eqz v42, :cond_ba0

    .line 1476
    :try_start_93f
    invoke-interface/range {v42 .. v42}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_946
    .catch Ljava/lang/ClassNotFoundException; {:try_start_93f .. :try_end_946} :catch_b5c

    move-result-object v15

    .line 1482
    .local v15, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_947
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/text/method/KeyListener;

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_95c
    .catch Ljava/lang/InstantiationException; {:try_start_947 .. :try_end_95c} :catch_b67
    .catch Ljava/lang/IllegalAccessException; {:try_start_947 .. :try_end_95c} :catch_b72

    .line 1490
    :try_start_95c
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    if-eqz v43, :cond_b7d

    move/from16 v70, v43

    :goto_966
    move/from16 v0, v70

    move-object/from16 v1, v71

    iput v0, v1, Landroid/widget/Editor;->mInputType:I
    :try_end_96c
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_95c .. :try_end_96c} :catch_b8f

    .line 1582
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_96c
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_987

    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v69

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    .line 1585
    :cond_987
    if-eqz v55, :cond_9a2

    .line 1586
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput-boolean v0, v1, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 1589
    sget-object v70, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v70

    if-ne v13, v0, :cond_9a2

    .line 1590
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1595
    :cond_9a2
    if-nez v26, :cond_9a6

    if-eqz v27, :cond_9f5

    .line 1596
    :cond_9a6
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    if-nez v70, :cond_9bd

    .line 1597
    new-instance v70, Landroid/widget/TextView$Drawables;

    move-object/from16 v0, v70

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mDrawables:Landroid/widget/TextView$Drawables;

    .line 1599
    :cond_9bd
    if-eqz v26, :cond_9d9

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 1603
    :cond_9d9
    if-eqz v27, :cond_9f5

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 1610
    :cond_9f5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1612
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1613
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, setCompoundDrawablePadding(I)V

    .line 1617
    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-direct {v0, v1}, setInputTypeSingleLine(Z)V

    .line 1618
    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v57

    move/from16 v3, v57

    invoke-direct {v0, v1, v2, v3}, applySingleLine(ZZZ)V

    .line 1620
    if-eqz v57, :cond_a30

    invoke-virtual/range {p0 .. p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v70

    if-nez v70, :cond_a30

    if-gez v34, :cond_a30

    .line 1621
    const/16 v34, 0x3

    .line 1624
    :cond_a30
    packed-switch v34, :pswitch_data_f44

    .line 1646
    :goto_a33
    if-eqz v61, :cond_d8b

    .end local v61    # "textColor":Landroid/content/res/ColorStateList;
    :goto_a35
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1647
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1648
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1649
    if-eqz v62, :cond_a53

    .line 1650
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, setHighlightColor(I)V

    .line 1652
    :cond_a53
    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v70, v0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-direct {v0, v1}, setRawTextSize(F)V

    .line 1653
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, setElegantTextHeight(Z)V

    .line 1654
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, setLetterSpacing(F)V

    .line 1655
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, setFontFeatureSettings(Ljava/lang/String;)V

    .line 1657
    if-eqz v7, :cond_a86

    .line 1658
    new-instance v70, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v71

    invoke-direct/range {v70 .. v71}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1661
    :cond_a86
    if-nez v50, :cond_a8e

    if-nez v51, :cond_a8e

    if-nez v69, :cond_a8e

    if-eqz v48, :cond_d93

    .line 1662
    :cond_a8e
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v70

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1672
    :cond_a99
    :goto_a99
    const/16 v70, -0x1

    move/from16 v0, v67

    move/from16 v1, v70

    if-eq v0, v1, :cond_aa5

    if-nez v38, :cond_aa5

    .line 1673
    const/16 v37, 0x0

    .line 1675
    :cond_aa5
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v67

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 1677
    if-eqz v56, :cond_abf

    .line 1678
    move-object/from16 v0, p0

    move/from16 v1, v53

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, setShadowLayer(FFFI)V

    .line 1681
    :cond_abf
    if-ltz v46, :cond_db7

    .line 1682
    const/16 v70, 0x1

    move/from16 v0, v70

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    new-instance v72, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v72

    move/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v72, v70, v71

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setFilters([Landroid/text/InputFilter;)V

    .line 1687
    :goto_add
    const/16 v70, -0x1

    move/from16 v0, v58

    move/from16 v1, v70

    if-eq v0, v1, :cond_af4

    .line 1688
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, setStringName(I)V

    .line 1689
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, fromResLock:Z

    .line 1692
    :cond_af4
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v13}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1693
    if-eqz v40, :cond_b04

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, setHint(Ljava/lang/CharSequence;)V

    .line 1700
    :cond_b04
    sget-object v70, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v70

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v70, v0

    if-nez v70, :cond_b22

    invoke-virtual/range {p0 .. p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v70

    if-eqz v70, :cond_dc2

    :cond_b22
    const/16 v36, 0x1

    .line 1704
    .local v36, "focusable":Z
    :goto_b24
    if-nez v36, :cond_b2c

    invoke-virtual/range {p0 .. p0}, isClickable()Z

    move-result v70

    if-eqz v70, :cond_dc6

    :cond_b2c
    const/16 v17, 0x1

    .line 1705
    .local v17, "clickable":Z
    :goto_b2e
    if-nez v36, :cond_b36

    invoke-virtual/range {p0 .. p0}, isLongClickable()Z

    move-result v70

    if-eqz v70, :cond_dca

    :cond_b36
    const/16 v45, 0x1

    .line 1707
    .local v45, "longClickable":Z
    :goto_b38
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v47

    .line 1708
    const/16 v41, 0x0

    :goto_b3e
    move/from16 v0, v41

    move/from16 v1, v47

    if-ge v0, v1, :cond_de6

    .line 1709
    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1711
    .restart local v10    # "attr":I
    sparse-switch v10, :sswitch_data_f50

    .line 1708
    :goto_b4d
    add-int/lit8 v41, v41, 0x1

    goto :goto_b3e

    .line 1465
    .end local v10    # "attr":I
    .end local v17    # "clickable":Z
    .end local v36    # "focusable":Z
    .end local v45    # "longClickable":Z
    .end local v48    # "numberPasswordInputType":Z
    .end local v51    # "passwordInputType":Z
    .end local v69    # "webPasswordInputType":Z
    .restart local v61    # "textColor":Landroid/content/res/ColorStateList;
    :cond_b50
    const/16 v51, 0x0

    goto/16 :goto_929

    .line 1467
    .restart local v51    # "passwordInputType":Z
    :cond_b54
    const/16 v69, 0x0

    goto/16 :goto_933

    .line 1469
    .restart local v69    # "webPasswordInputType":Z
    :cond_b58
    const/16 v48, 0x0

    goto/16 :goto_93d

    .line 1477
    .restart local v48    # "numberPasswordInputType":Z
    :catch_b5c
    move-exception v35

    .line 1478
    .local v35, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v70, Ljava/lang/RuntimeException;

    move-object/from16 v0, v70

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v70

    .line 1484
    .end local v35    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_b67
    move-exception v35

    .line 1485
    .local v35, "ex":Ljava/lang/InstantiationException;
    new-instance v70, Ljava/lang/RuntimeException;

    move-object/from16 v0, v70

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v70

    .line 1486
    .end local v35    # "ex":Ljava/lang/InstantiationException;
    :catch_b72
    move-exception v35

    .line 1487
    .local v35, "ex":Ljava/lang/IllegalAccessException;
    new-instance v70, Ljava/lang/RuntimeException;

    move-object/from16 v0, v70

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v70

    .line 1490
    .end local v35    # "ex":Ljava/lang/IllegalAccessException;
    :cond_b7d
    :try_start_b7d
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v70, v0

    invoke-interface/range {v70 .. v70}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_b8c
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_b7d .. :try_end_b8c} :catch_b8f

    move-result v70

    goto/16 :goto_966

    .line 1493
    :catch_b8f
    move-exception v31

    .line 1494
    .local v31, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_96c

    .line 1496
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_ba0
    if-eqz v19, :cond_bce

    .line 1497
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v71 .. v71}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v71, v0

    if-eqz v43, :cond_bcb

    move/from16 v70, v43

    :goto_bc3
    move/from16 v0, v70

    move-object/from16 v1, v71

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_96c

    :cond_bcb
    const/16 v70, 0x1

    goto :goto_bc3

    .line 1504
    :cond_bce
    if-eqz v43, :cond_be8

    .line 1505
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v70

    invoke-direct {v0, v1, v2}, setInputType(IZ)V

    .line 1507
    invoke-static/range {v43 .. v43}, isMultilineInputType(I)Z

    move-result v70

    if-nez v70, :cond_be5

    const/16 v57, 0x1

    :goto_be3
    goto/16 :goto_96c

    :cond_be5
    const/16 v57, 0x0

    goto :goto_be3

    .line 1508
    :cond_be8
    if-eqz v52, :cond_c0d

    .line 1509
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v43, 0x3

    move/from16 v0, v43

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_96c

    .line 1512
    :cond_c0d
    if-eqz v49, :cond_c60

    .line 1513
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v72, v0

    and-int/lit8 v70, v49, 0x2

    if-eqz v70, :cond_c58

    const/16 v70, 0x1

    move/from16 v71, v70

    :goto_c20
    and-int/lit8 v70, v49, 0x4

    if-eqz v70, :cond_c5d

    const/16 v70, 0x1

    :goto_c26
    move/from16 v0, v71

    move/from16 v1, v70

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1516
    const/16 v43, 0x2

    .line 1517
    and-int/lit8 v70, v49, 0x2

    if-eqz v70, :cond_c40

    .line 1518
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x1000

    move/from16 v43, v0

    .line 1520
    :cond_c40
    and-int/lit8 v70, v49, 0x4

    if-eqz v70, :cond_c4a

    .line 1521
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x2000

    move/from16 v43, v0

    .line 1523
    :cond_c4a
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move/from16 v0, v43

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_96c

    .line 1514
    :cond_c58
    const/16 v70, 0x0

    move/from16 v71, v70

    goto :goto_c20

    :cond_c5d
    const/16 v70, 0x0

    goto :goto_c26

    .line 1524
    :cond_c60
    if-nez v12, :cond_c68

    const/16 v70, -0x1

    move/from16 v0, v70

    if-eq v11, v0, :cond_cad

    .line 1527
    :cond_c68
    const/16 v43, 0x1

    .line 1529
    packed-switch v11, :pswitch_data_f5e

    .line 1546
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1550
    .local v16, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_c6f
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move/from16 v0, v43

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_96c

    .line 1531
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_c92
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1532
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x4000

    move/from16 v43, v0

    .line 1533
    goto :goto_c6f

    .line 1536
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_c9b
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1537
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x2000

    move/from16 v43, v0

    .line 1538
    goto :goto_c6f

    .line 1541
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_ca4
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1542
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v43

    or-int/lit16 v0, v0, 0x1000

    move/from16 v43, v0

    .line 1543
    goto :goto_c6f

    .line 1553
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_cad
    invoke-virtual/range {p0 .. p0}, isTextSelectable()Z

    move-result v70

    if-eqz v70, :cond_ce6

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_cd7

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    .line 1559
    :cond_cd7
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1561
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v70

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_96c

    .line 1562
    :cond_ce6
    if-eqz v32, :cond_d0b

    .line 1563
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v71

    move-object/from16 v1, v70

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_96c

    .line 1567
    :cond_d0b
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_d21

    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v71

    move-object/from16 v1, v70

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1569
    :cond_d21
    packed-switch v14, :pswitch_data_f68

    goto/16 :goto_96c

    .line 1571
    :pswitch_d26
    sget-object v13, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 1572
    goto/16 :goto_96c

    .line 1574
    :pswitch_d2a
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1575
    goto/16 :goto_96c

    .line 1577
    :pswitch_d2e
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_96c

    .line 1626
    :pswitch_d32
    sget-object v70, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_a33

    .line 1629
    :pswitch_d3d
    sget-object v70, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_a33

    .line 1632
    :pswitch_d48
    sget-object v70, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_a33

    .line 1635
    :pswitch_d53
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v70

    if-eqz v70, :cond_d79

    .line 1636
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setHorizontalFadingEdgeEnabled(Z)V

    .line 1637
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMarqueeFadeMode:I

    .line 1642
    :goto_d6e
    sget-object v70, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_a33

    .line 1639
    :cond_d79
    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setHorizontalFadingEdgeEnabled(Z)V

    .line 1640
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput v0, v1, mMarqueeFadeMode:I

    goto :goto_d6e

    .line 1646
    :cond_d8b
    const/high16 v70, -0x1000000

    invoke-static/range {v70 .. v70}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v61

    goto/16 :goto_a35

    .line 1665
    .end local v61    # "textColor":Landroid/content/res/ColorStateList;
    :cond_d93
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_a99

    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v70, v0

    move/from16 v0, v70

    and-int/lit16 v0, v0, 0xfff

    move/from16 v70, v0

    const/16 v71, 0x81

    move/from16 v0, v70

    move/from16 v1, v71

    if-ne v0, v1, :cond_a99

    goto/16 :goto_a99

    .line 1684
    :cond_db7
    sget-object v70, NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_add

    .line 1703
    :cond_dc2
    const/16 v36, 0x0

    goto/16 :goto_b24

    .line 1704
    .restart local v36    # "focusable":Z
    :cond_dc6
    const/16 v17, 0x0

    goto/16 :goto_b2e

    .line 1705
    .restart local v17    # "clickable":Z
    :cond_dca
    const/16 v45, 0x0

    goto/16 :goto_b38

    .line 1713
    .restart local v10    # "attr":I
    .restart local v45    # "longClickable":Z
    :sswitch_dce
    move/from16 v0, v36

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v36

    .line 1714
    goto/16 :goto_b4d

    .line 1717
    :sswitch_dd6
    move/from16 v0, v17

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 1718
    goto/16 :goto_b4d

    .line 1721
    :sswitch_dde
    move/from16 v0, v45

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v45

    goto/16 :goto_b4d

    .line 1725
    .end local v10    # "attr":I
    :cond_de6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1727
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, setFocusable(Z)V

    .line 1728
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setClickable(Z)V

    .line 1729
    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, setLongClickable(Z)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    if-eqz v70, :cond_e0f

    move-object/from16 v0, p0

    iget-object v0, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1734
    :cond_e0f
    invoke-virtual/range {p0 .. p0}, getImportantForAccessibility()I

    move-result v70

    if-nez v70, :cond_e1e

    .line 1735
    const/16 v70, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setImportantForAccessibility(I)V

    .line 1739
    :cond_e1e
    invoke-virtual/range {p0 .. p0}, getHoverUIFeatureLevel()I

    move-result v70

    const/16 v71, 0x2

    move/from16 v0, v70

    move/from16 v1, v71

    if-lt v0, v1, :cond_e33

    .line 1740
    const/16 v70, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v70

    invoke-virtual {v0, v1}, setHoverPopupType(I)V

    .line 1743
    :cond_e33
    sget-boolean v70, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v70, :cond_e3f

    .line 1744
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, p0

    iput-boolean v0, v1, fromResLock:Z

    .line 1748
    :cond_e3f
    new-instance v70, Landroid/widget/TextView$TextViewClipboardEventListener;

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$TextViewClipboardEventListener;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    .line 1752
    invoke-virtual/range {p0 .. p0}, isMultiPenSelectionEnabled()Z

    move-result v70

    if-eqz v70, :cond_e63

    .line 1753
    new-instance v70, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, v70

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1758
    :cond_e63
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, mWBMaxLength:I

    .line 1761
    invoke-direct/range {p0 .. p1}, initTextStrikeThroughAnim(Landroid/content/Context;)V

    .line 1762
    return-void

    .line 1006
    nop

    :pswitch_data_e6e
    .packed-switch 0x0
        :pswitch_3c1
        :pswitch_3c8
        :pswitch_3d6
        :pswitch_3b2
        :pswitch_3ab
        :pswitch_3b7
        :pswitch_3bc
        :pswitch_3e8
        :pswitch_3f1
        :pswitch_3fa
        :pswitch_403
        :pswitch_3df
        :pswitch_3d1
        :pswitch_40c
        :pswitch_415
        :pswitch_41e
    .end packed-switch

    .line 1108
    :pswitch_data_e92
    .packed-switch 0x0
        :pswitch_6e3
        :pswitch_498
        :pswitch_710
        :pswitch_718
        :pswitch_720
        :pswitch_6fe
        :pswitch_6f6
        :pswitch_704
        :pswitch_70a
        :pswitch_649
        :pswitch_5f7
        :pswitch_4d0
        :pswitch_4df
        :pswitch_5a2
        :pswitch_53c
        :pswitch_5e6
        :pswitch_580
        :pswitch_4c4
        :pswitch_61a
        :pswitch_608
        :pswitch_69a
        :pswitch_67b
        :pswitch_52b
        :pswitch_54d
        :pswitch_55e
        :pswitch_56f
        :pswitch_591
        :pswitch_5b3
        :pswitch_5c4
        :pswitch_5d5
        :pswitch_62c
        :pswitch_730
        :pswitch_641
        :pswitch_4c9
        :pswitch_666
        :pswitch_690
        :pswitch_6bb
        :pswitch_6c5
        :pswitch_6cf
        :pswitch_6d9
        :pswitch_4a7
        :pswitch_4ae
        :pswitch_4b3
        :pswitch_4a2
        :pswitch_4bf
        :pswitch_4ba
        :pswitch_49b
        :pswitch_6ab
        :pswitch_4f3
        :pswitch_4fd
        :pswitch_4ee
        :pswitch_4f8
        :pswitch_523
        :pswitch_738
        :pswitch_756
        :pswitch_651
        :pswitch_76a
        :pswitch_821
        :pswitch_82e
        :pswitch_78d
        :pswitch_7c5
        :pswitch_7e9
        :pswitch_86f
        :pswitch_87f
        :pswitch_88f
        :pswitch_498
        :pswitch_498
        :pswitch_8bf
        :pswitch_498
        :pswitch_498
        :pswitch_85f
        :pswitch_8af
        :pswitch_8d0
        :pswitch_502
        :pswitch_507
        :pswitch_728
        :pswitch_8da
        :pswitch_8e4
        :pswitch_8ee
        :pswitch_50c
        :pswitch_511
        :pswitch_8f4
        :pswitch_904
        :pswitch_774
        :pswitch_498
        :pswitch_498
        :pswitch_89f
    .end packed-switch

    .line 1624
    :pswitch_data_f44
    .packed-switch 0x1
        :pswitch_d32
        :pswitch_d3d
        :pswitch_d48
        :pswitch_d53
    .end packed-switch

    .line 1711
    :sswitch_data_f50
    .sparse-switch
        0x13 -> :sswitch_dce
        0x1e -> :sswitch_dd6
        0x1f -> :sswitch_dde
    .end sparse-switch

    .line 1529
    :pswitch_data_f5e
    .packed-switch 0x1
        :pswitch_c92
        :pswitch_c9b
        :pswitch_ca4
    .end packed-switch

    .line 1569
    :pswitch_data_f68
    .packed-switch 0x0
        :pswitch_d26
        :pswitch_d2a
        :pswitch_d2e
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/widget/TextView;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 325
    invoke-direct {p0, p1}, pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TextView;)Landroid/widget/Editor;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Landroid/text/Layout;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 325
    invoke-static {p0}, isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-direct {p0}, shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .registers 5
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3, p4}, sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-direct {p0}, canMarquee()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget v0, p0, TOUCH_DELTA:F

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-boolean v0, p0, mEnableMultiSelection:Z

    return v0
.end method

.method static synthetic access$2700()Z
    .registers 1

    .prologue
    .line 325
    sget-boolean v0, mIsFindTargetView:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 325
    sput-boolean p0, mIsFindTargetView:Z

    return p0
.end method

.method static synthetic access$2800()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 325
    sget-object v0, mTargetView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    sput-object p0, mTargetView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-direct {p0}, canTextMultiSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000()J
    .registers 2

    .prologue
    .line 325
    sget-wide v0, mCurTime:J

    return-wide v0
.end method

.method static synthetic access$3002(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 325
    sput-wide p0, mCurTime:J

    return-wide p0
.end method

.method static synthetic access$3100()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 325
    sget-object v0, mLastHoveredView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    sput-object p0, mLastHoveredView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200()J
    .registers 2

    .prologue
    .line 325
    sget-wide v0, mLastHoveredTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    iget-object v0, p0, mMarquee:Landroid/widget/TextView$Marquee;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;III)Z
    .registers 5
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3}, checkPosInView(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;III)Z
    .registers 5
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3}, checkPosOnText(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/TextView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-direct {p0}, hideMultiSelectPopupWindow()V

    return-void
.end method

.method static synthetic access$3700(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;
    .registers 3
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 325
    invoke-direct {p0, p1}, getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-virtual {p0}, isMultiPenSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900()J
    .registers 2

    .prologue
    .line 325
    sget-wide v0, mLastPenDownTime:J

    return-wide v0
.end method

.method static synthetic access$3902(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 325
    sput-wide p0, mLastPenDownTime:J

    return-wide p0
.end method

.method static synthetic access$4000()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 325
    sget-object v0, mShowPenSelectionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4002(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 325
    sput-object p0, mShowPenSelectionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Landroid/widget/TextView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, mLineIsDrawed:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-virtual {p0}, isMultiPenSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4202(Landroid/widget/TextView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, mHighlightPathBogus:Z

    return p1
.end method

.method static synthetic access$4302(Landroid/widget/TextView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, mhasMultiSelection:Z

    return p1
.end method

.method static synthetic access$4600(Landroid/widget/TextView;II)Z
    .registers 4
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 325
    invoke-direct {p0, p1, p2}, selectCurrentWordForMultiSelection(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/TextView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-direct {p0}, showMultiSelectPopupWindow()V

    return-void
.end method

.method static synthetic access$4800(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-virtual {p0}, isTextSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Landroid/widget/TextView;F)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # F

    .prologue
    .line 325
    iput p1, p0, mDrawStrikeAnimationValue:F

    return p1
.end method

.method static synthetic access$600(Landroid/widget/TextView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 325
    invoke-direct {p0}, updateTextServicesLocaleLocked()V

    return-void
.end method

.method private applyCompoundDrawableTint()V
    .registers 11

    .prologue
    .line 2972
    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v9, :cond_5

    .line 3012
    :cond_4
    return-void

    .line 2976
    :cond_5
    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v9, v9, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-nez v9, :cond_11

    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v9, v9, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-eqz v9, :cond_4

    .line 2977
    :cond_11
    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v7, v9, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 2978
    .local v7, "tintList":Landroid/content/res/ColorStateList;
    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v8, v9, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2979
    .local v8, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v2, v9, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 2980
    .local v2, "hasTint":Z
    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v3, v9, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 2981
    .local v3, "hasTintMode":Z
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v6

    .line 2983
    .local v6, "state":[I
    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v9, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2b
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 2984
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_34

    .line 2983
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 2988
    :cond_34
    iget-object v9, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v1, v9, :cond_31

    .line 2995
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2997
    if-eqz v2, :cond_42

    .line 2998
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3001
    :cond_42
    if-eqz v3, :cond_47

    .line 3002
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 3007
    :cond_47
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_31

    .line 3008
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_31
.end method

.method private applySingleLine(ZZZ)V
    .registers 5
    .param p1, "singleLine"    # Z
    .param p2, "applyTransformation"    # Z
    .param p3, "changeMaxLines"    # Z

    .prologue
    const/4 v0, 0x1

    .line 8821
    iput-boolean p1, p0, mSingleLine:Z

    .line 8822
    if-eqz p1, :cond_15

    .line 8823
    invoke-virtual {p0, v0}, setLines(I)V

    .line 8824
    invoke-virtual {p0, v0}, setHorizontallyScrolling(Z)V

    .line 8825
    if-eqz p2, :cond_14

    .line 8826
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8837
    :cond_14
    :goto_14
    return-void

    .line 8829
    :cond_15
    if-eqz p3, :cond_1d

    .line 8830
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, setMaxLines(I)V

    .line 8832
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setHorizontallyScrolling(Z)V

    .line 8833
    if-eqz p2, :cond_14

    .line 8834
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_14
.end method

.method private assumeLayout()V
    .registers 8

    .prologue
    .line 7543
    iget v0, p0, mRight:I

    iget v3, p0, mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 7545
    .local v1, "width":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_14

    .line 7546
    const/4 v1, 0x0

    .line 7549
    :cond_14
    move v2, v1

    .line 7551
    .local v2, "physicalWidth":I
    iget-boolean v0, p0, mHorizontallyScrolling:Z

    if-eqz v0, :cond_1b

    .line 7552
    const/high16 v1, 0x100000

    .line 7555
    :cond_1b
    sget-object v3, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7557
    return-void
.end method

.method private bringTextIntoView()Z
    .registers 16

    .prologue
    const/16 v14, 0x50

    const/4 v11, 0x1

    .line 8330
    invoke-direct {p0}, isShowingHint()Z

    move-result v12

    if-eqz v12, :cond_7f

    iget-object v4, p0, mHintLayout:Landroid/text/Layout;

    .line 8331
    .local v4, "layout":Landroid/text/Layout;
    :goto_b
    const/4 v6, 0x0

    .line 8332
    .local v6, "line":I
    iget v12, p0, mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_18

    .line 8333
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 8336
    :cond_18
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 8337
    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 8338
    .local v1, "dir":I
    iget v12, p0, mRight:I

    iget v13, p0, mLeft:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v13

    sub-int v2, v12, v13

    .line 8339
    .local v2, "hspace":I
    iget v12, p0, mBottom:I

    iget v13, p0, mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, getExtendedPaddingBottom()I

    move-result v13

    sub-int v10, v12, v13

    .line 8340
    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 8345
    .local v3, "ht":I
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_85

    .line 8346
    if-ne v1, v11, :cond_82

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 8353
    :cond_4c
    :goto_4c
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_98

    .line 8359
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    .line 8360
    .local v5, "left":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 8362
    .local v7, "right":I
    sub-int v12, v7, v5

    if-ge v12, v2, :cond_91

    .line 8363
    add-int v12, v7, v5

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, v2, 0x2

    sub-int v8, v12, v13

    .line 8378
    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_70
    if-ge v3, v10, :cond_b4

    .line 8379
    const/4 v9, 0x0

    .line 8388
    .local v9, "scrolly":I
    :goto_73
    iget v12, p0, mScrollX:I

    if-ne v8, v12, :cond_7b

    iget v12, p0, mScrollY:I

    if-eq v9, v12, :cond_bf

    .line 8389
    :cond_7b
    invoke-virtual {p0, v8, v9}, scrollTo(II)V

    .line 8392
    :goto_7e
    return v11

    .line 8330
    .end local v0    # "a":Landroid/text/Layout$Alignment;
    .end local v1    # "dir":I
    .end local v2    # "hspace":I
    .end local v3    # "ht":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v8    # "scrollx":I
    .end local v9    # "scrolly":I
    .end local v10    # "vspace":I
    :cond_7f
    iget-object v4, p0, mLayout:Landroid/text/Layout;

    goto :goto_b

    .line 8346
    .restart local v0    # "a":Landroid/text/Layout$Alignment;
    .restart local v1    # "dir":I
    .restart local v2    # "hspace":I
    .restart local v3    # "ht":I
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v6    # "line":I
    .restart local v10    # "vspace":I
    :cond_82
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_4c

    .line 8348
    :cond_85
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_4c

    .line 8349
    if-ne v1, v11, :cond_8e

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_8d
    goto :goto_4c

    :cond_8e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_8d

    .line 8365
    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_91
    if-gez v1, :cond_96

    .line 8366
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_70

    .line 8368
    .end local v8    # "scrollx":I
    :cond_96
    move v8, v5

    .restart local v8    # "scrollx":I
    goto :goto_70

    .line 8371
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_98
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_a9

    .line 8372
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 8373
    .restart local v7    # "right":I
    sub-int v8, v7, v2

    .line 8374
    .restart local v8    # "scrollx":I
    goto :goto_70

    .line 8375
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_a9
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v8, v12

    .restart local v8    # "scrollx":I
    goto :goto_70

    .line 8381
    :cond_b4
    iget v12, p0, mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_bd

    .line 8382
    sub-int v9, v3, v10

    .restart local v9    # "scrolly":I
    goto :goto_73

    .line 8384
    .end local v9    # "scrolly":I
    :cond_bd
    const/4 v9, 0x0

    .restart local v9    # "scrolly":I
    goto :goto_73

    .line 8392
    :cond_bf
    const/4 v11, 0x0

    goto :goto_7e
.end method

.method private canMarquee()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 8989
    iget v2, p0, mRight:I

    iget v3, p0, mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 8990
    .local v0, "width":I
    if-lez v0, :cond_32

    iget-object v2, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_31

    iget v2, p0, mMarqueeFadeMode:I

    if-eqz v2, :cond_32

    iget-object v2, p0, mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_32

    iget-object v2, p0, mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_32

    :cond_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method private canTextMultiSelection()Z
    .registers 2

    .prologue
    .line 12318
    iget-boolean v0, p0, mEnableMultiSelection:Z

    if-eqz v0, :cond_2a

    invoke-direct {p0}, isCoverOpened()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, isCarMode()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0}, isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0}, isDisabledStylusPenEvent()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0}, isSubWindow()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private checkForRelayout()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 8263
    iget-object v0, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_14

    iget v0, p0, mMaxWidthMode:I

    iget v3, p0, mMinWidthMode:I

    if-ne v0, v3, :cond_93

    iget v0, p0, mMaxWidth:I

    iget v3, p0, mMinWidth:I

    if-ne v0, v3, :cond_93

    :cond_14
    iget-object v0, p0, mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_93

    :cond_1c
    iget v0, p0, mRight:I

    iget v3, p0, mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_93

    .line 8269
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 8270
    .local v7, "oldht":I
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 8271
    .local v1, "want":I
    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_6d

    move v2, v6

    .line 8278
    .local v2, "hintWant":I
    :goto_3e
    sget-object v3, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, mRight:I

    iget v5, p0, mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 8282
    iget-object v0, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_8c

    .line 8284
    iget-object v0, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_74

    iget-object v0, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_74

    .line 8286
    invoke-virtual {p0}, invalidate()V

    .line 8310
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_6c
    return-void

    .line 8271
    .restart local v1    # "want":I
    .restart local v7    # "oldht":I
    :cond_6d
    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_3e

    .line 8292
    .restart local v2    # "hintWant":I
    :cond_74
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8c

    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_88

    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_8c

    .line 8294
    :cond_88
    invoke-virtual {p0}, invalidate()V

    goto :goto_6c

    .line 8301
    :cond_8c
    invoke-virtual {p0}, requestLayout()V

    .line 8302
    invoke-virtual {p0}, invalidate()V

    goto :goto_6c

    .line 8306
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :cond_93
    invoke-direct {p0}, nullLayouts()V

    .line 8307
    invoke-virtual {p0}, requestLayout()V

    .line 8308
    invoke-virtual {p0}, invalidate()V

    goto :goto_6c
.end method

.method private checkForResize()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 8222
    const/4 v1, 0x0

    .line 8224
    .local v1, "sizeChanged":Z
    iget-object v2, p0, mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_21

    .line 8226
    iget-object v2, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_10

    .line 8227
    const/4 v1, 0x1

    .line 8228
    invoke-virtual {p0}, invalidate()V

    .line 8232
    :cond_10
    iget-object v2, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_27

    .line 8233
    invoke-direct {p0}, getDesiredHeight()I

    move-result v0

    .line 8235
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, getHeight()I

    move-result v2

    if-eq v0, v2, :cond_21

    .line 8236
    const/4 v1, 0x1

    .line 8249
    .end local v0    # "desiredHeight":I
    :cond_21
    :goto_21
    if-eqz v1, :cond_26

    .line 8250
    invoke-virtual {p0}, requestLayout()V

    .line 8253
    :cond_26
    return-void

    .line 8238
    :cond_27
    iget-object v2, p0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    .line 8239
    iget v2, p0, mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_21

    .line 8240
    invoke-direct {p0}, getDesiredHeight()I

    move-result v0

    .line 8242
    .restart local v0    # "desiredHeight":I
    iget v2, p0, mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_21

    .line 8243
    const/4 v1, 0x1

    goto :goto_21
.end method

.method private checkPosInView(III)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "overplus"    # I

    .prologue
    const/4 v2, 0x0

    .line 12394
    invoke-virtual {p0}, isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_8

    .line 12408
    :cond_7
    :goto_7
    return v2

    .line 12397
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12398
    .local v0, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 12400
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 12401
    .local v1, "startPos":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 12402
    neg-int v3, p3

    neg-int v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 12404
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v3, :cond_7

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-gt p1, v3, :cond_7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v3, :cond_7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v3, :cond_7

    .line 12405
    const/4 v2, 0x1

    goto :goto_7
.end method

.method private checkPosOnText(III)Z
    .registers 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "overplus"    # I

    .prologue
    .line 12413
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 12414
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_8

    const/4 v11, 0x0

    .line 12442
    :goto_7
    return v11

    .line 12416
    :cond_8
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 12417
    .local v8, "screenOffsetOfView":[I
    invoke-virtual {p0, v8}, getLocationOnScreen([I)V

    .line 12419
    const/4 v11, 0x0

    aget v11, v8, v11

    sub-int v6, p1, v11

    .line 12420
    .local v6, "posX":I
    const/4 v11, 0x1

    aget v11, v8, v11

    sub-int v7, p2, v11

    .line 12422
    .local v7, "posY":I
    int-to-float v11, v7

    invoke-virtual {p0, v11}, getLineAtCoordinate(F)I

    move-result v1

    .line 12423
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 12425
    .local v3, "lineStart":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    invoke-virtual {p0}, getTotalPaddingTop()I

    move-result v12

    add-int v4, v11, v12

    .line 12426
    .local v4, "lineTop":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    invoke-virtual {p0}, getTotalPaddingTop()I

    move-result v12

    add-int v2, v11, v12

    .line 12427
    .local v2, "lineBtm":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v11

    float-to-int v5, v11

    .line 12429
    .local v5, "lineWidth":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, getTotalPaddingLeft()I

    move-result v12

    add-int v10, v11, v12

    .line 12430
    .local v10, "textStartX":I
    const/4 v9, 0x0

    .line 12431
    .local v9, "textEndX":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_63

    .line 12432
    move v9, v10

    .line 12433
    sub-int v10, v9, v5

    .line 12438
    :goto_55
    sub-int v11, v10, p3

    if-lt v6, v11, :cond_61

    add-int v11, v9, p3

    if-lt v11, v6, :cond_61

    if-lt v7, v4, :cond_61

    if-le v7, v2, :cond_66

    .line 12439
    :cond_61
    const/4 v11, 0x0

    goto :goto_7

    .line 12435
    :cond_63
    add-int v9, v10, v5

    goto :goto_55

    .line 12442
    :cond_66
    const/4 v11, 0x1

    goto :goto_7
.end method

.method private compressText(F)Z
    .registers 9
    .param p1, "width"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 7874
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 7892
    :cond_b
    :goto_b
    return v2

    .line 7877
    :cond_c
    cmpl-float v4, p1, v6

    if-lez v4, :cond_b

    iget-object v4, p0, mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_b

    invoke-virtual {p0}, getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_b

    iget-boolean v4, p0, mUserSetTextScaleX:Z

    if-nez v4, :cond_b

    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b

    .line 7879
    iget-object v4, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 7880
    .local v1, "textWidth":F
    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    .line 7881
    .local v0, "overflow":F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_b

    const v4, 0x3d8f5c29    # 0.07f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_b

    .line 7882
    iget-object v2, p0, mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a    # 0.005f

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 7883
    new-instance v2, Landroid/widget/TextView$4;

    invoke-direct {v2, p0}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, post(Ljava/lang/Runnable;)Z

    move v2, v3

    .line 7888
    goto :goto_b
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 8673
    invoke-virtual {p0}, viewportToContentHorizontalOffset()I

    move-result v0

    .line 8674
    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 8675
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 8677
    invoke-virtual {p0}, viewportToContentVerticalOffset()I

    move-result v1

    .line 8678
    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 8679
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 8680
    return-void
.end method

.method private createEditorIfNeeded()V
    .registers 2

    .prologue
    .line 11481
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_b

    .line 11482
    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, mEditor:Landroid/widget/Editor;

    .line 11484
    :cond_b
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .registers 7
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    .line 7896
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7897
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 7898
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 7903
    .local v1, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_21

    .line 7904
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1e

    .line 7905
    const/4 v4, -0x1

    .line 7912
    :goto_1d
    return v4

    .line 7903
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7908
    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_2f

    .line 7909
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 7908
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 7912
    :cond_2f
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_1d
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "otherEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 7025
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    move v3, v4

    .line 7159
    :cond_a
    :goto_a
    return v3

    .line 7034
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_19

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 7035
    iput-boolean v4, p0, mPreventDefaultMovement:Z

    .line 7038
    :cond_19
    sparse-switch p1, :sswitch_data_142

    .line 7101
    :cond_1c
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_f8

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_f8

    .line 7102
    const/4 v0, 0x1

    .line 7103
    .local v0, "doDown":Z
    if-eqz p3, :cond_d2

    .line 7105
    :try_start_29
    invoke-virtual {p0}, beginBatchEdit()V

    .line 7106
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v6, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 7108
    .local v1, "handled":Z
    invoke-virtual {p0}, hideErrorIfUnchanged()V
    :try_end_3b
    .catch Ljava/lang/AbstractMethodError; {:try_start_29 .. :try_end_3b} :catch_ee
    .catchall {:try_start_29 .. :try_end_3b} :catchall_f3

    .line 7109
    const/4 v0, 0x0

    .line 7110
    if-eqz v1, :cond_cf

    .line 7117
    invoke-virtual {p0}, endBatchEdit()V

    goto :goto_a

    .line 7040
    .end local v0    # "doDown":Z
    .end local v1    # "handled":Z
    :sswitch_42
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7045
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_6d

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_6d

    .line 7048
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_6d

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 7051
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v5, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    goto :goto_a

    .line 7060
    :cond_6d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_7b

    invoke-direct {p0}, shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7062
    :cond_7b
    invoke-virtual {p0}, hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_a

    move v3, v4

    .line 7063
    goto :goto_a

    .line 7071
    :sswitch_83
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7072
    invoke-direct {p0}, shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v3, v4

    .line 7073
    goto/16 :goto_a

    .line 7079
    :sswitch_92
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_9e

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7080
    :cond_9e
    invoke-direct {p0}, shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v3, v4

    .line 7081
    goto/16 :goto_a

    .line 7089
    :sswitch_a7
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 7090
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissDialog()V

    goto/16 :goto_a

    .line 7094
    :cond_c0
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1c

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1c

    .line 7095
    invoke-virtual {p0}, stopTextActionMode()V

    goto/16 :goto_a

    .line 7117
    .restart local v0    # "doDown":Z
    .restart local v1    # "handled":Z
    :cond_cf
    invoke-virtual {p0}, endBatchEdit()V

    .line 7121
    .end local v1    # "handled":Z
    :cond_d2
    :goto_d2
    if-eqz v0, :cond_f8

    .line 7122
    invoke-virtual {p0}, beginBatchEdit()V

    .line 7123
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v6, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 7125
    .restart local v1    # "handled":Z
    invoke-virtual {p0}, endBatchEdit()V

    .line 7126
    invoke-virtual {p0}, hideErrorIfUnchanged()V

    .line 7127
    if-eqz v1, :cond_f8

    move v3, v5

    goto/16 :goto_a

    .line 7113
    .end local v1    # "handled":Z
    :catch_ee
    move-exception v2

    .line 7117
    invoke-virtual {p0}, endBatchEdit()V

    goto :goto_d2

    :catchall_f3
    move-exception v2

    invoke-virtual {p0}, endBatchEdit()V

    throw v2

    .line 7134
    .end local v0    # "doDown":Z
    :cond_f8
    iget-object v2, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_12f

    iget-object v2, p0, mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_12f

    .line 7135
    const/4 v0, 0x1

    .line 7136
    .restart local v0    # "doDown":Z
    if-eqz p3, :cond_110

    .line 7138
    :try_start_103
    iget-object v6, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_10c
    .catch Ljava/lang/AbstractMethodError; {:try_start_103 .. :try_end_10c} :catch_13f

    move-result v1

    .line 7140
    .restart local v1    # "handled":Z
    const/4 v0, 0x0

    .line 7141
    if-nez v1, :cond_a

    .line 7149
    .end local v1    # "handled":Z
    :cond_110
    :goto_110
    if-eqz v0, :cond_12f

    .line 7150
    iget-object v6, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 7151
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_12c

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_12c

    .line 7152
    iput-boolean v5, p0, mPreventDefaultMovement:Z

    .line 7154
    :cond_12c
    const/4 v3, 0x2

    goto/16 :goto_a

    .line 7159
    .end local v0    # "doDown":Z
    :cond_12f
    iget-boolean v2, p0, mPreventDefaultMovement:Z

    if-eqz v2, :cond_13d

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_13d

    move v2, v3

    :goto_13a
    move v3, v2

    goto/16 :goto_a

    :cond_13d
    move v2, v4

    goto :goto_13a

    .line 7144
    .restart local v0    # "doDown":Z
    :catch_13f
    move-exception v2

    goto :goto_110

    .line 7038
    nop

    :sswitch_data_142
    .sparse-switch
        0x4 -> :sswitch_a7
        0x17 -> :sswitch_83
        0x3d -> :sswitch_92
        0x42 -> :sswitch_42
    .end sparse-switch
.end method

.method private drawTextStrikethrough(Landroid/graphics/Canvas;I)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textColor"    # I

    .prologue
    .line 6583
    invoke-virtual/range {p0 .. p0}, getTotalPaddingLeft()I

    move-result v12

    .line 6584
    .local v12, "leftPadding":I
    invoke-virtual/range {p0 .. p0}, getTotalPaddingBottom()I

    move-result v16

    .line 6585
    .local v16, "rightPadding":I
    invoke-virtual/range {p0 .. p0}, getTotalPaddingTop()I

    move-result v19

    .line 6586
    .local v19, "topPadding":I
    invoke-virtual/range {p0 .. p0}, getTotalPaddingBottom()I

    move-result v9

    .line 6588
    .local v9, "bottomPadding":I
    invoke-virtual/range {p0 .. p0}, getLineCount()I

    move-result v13

    .line 6589
    .local v13, "lineCount":I
    const/4 v3, 0x0

    .line 6591
    .local v3, "lineY":F
    invoke-virtual/range {p0 .. p0}, getLayout()Landroid/text/Layout;

    move-result-object v18

    .line 6593
    .local v18, "textLayout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v1, v0, mStrikeThroughPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_28

    .line 6594
    move-object/from16 v0, p0

    iget-object v1, v0, mStrikeThroughPaint:Landroid/graphics/Paint;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6597
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v1, v0, mSkipDrawTextStrike:Z

    if-eqz v1, :cond_2f

    .line 6663
    :cond_2e
    return-void

    .line 6604
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v1, v0, mTextStrikeThroughEnabled:Z

    if-eqz v1, :cond_2e

    move-object/from16 v0, p0

    iget v1, v0, mDrawStrikeAnimationValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v1, v0, mStrikeThroughPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2e

    if-lez v13, :cond_2e

    .line 6609
    new-array v7, v13, [F

    .line 6610
    .local v7, "accumLineWidths":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_49
    if-ge v11, v13, :cond_61

    .line 6611
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    aput v1, v7, v11

    .line 6612
    if-lez v11, :cond_5e

    .line 6613
    aget v1, v7, v11

    add-int/lit8 v2, v11, -0x1

    aget v2, v7, v2

    add-float/2addr v1, v2

    aput v1, v7, v11

    .line 6610
    :cond_5e
    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    .line 6618
    :cond_61
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aget v20, v7, v1

    .line 6619
    .local v20, "totalLineWidth":F
    move-object/from16 v0, p0

    iget v1, v0, mDrawStrikeAnimationValue:F

    mul-float v17, v20, v1

    .line 6622
    .local v17, "strikethroughCurrLength":F
    const/4 v11, 0x0

    :goto_6d
    if-ge v11, v13, :cond_2e

    .line 6623
    if-nez v11, :cond_b9

    const/4 v15, 0x0

    .line 6624
    .local v15, "lowerBound":F
    :goto_72
    aget v21, v7, v11

    .line 6626
    .local v21, "upperBound":F
    const/4 v10, 0x0

    .line 6627
    .local v10, "currentLineLength":F
    cmpg-float v1, v17, v15

    if-gtz v1, :cond_be

    .line 6628
    const/4 v10, 0x0

    .line 6639
    :cond_7a
    :goto_7a
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    add-int v1, v1, v19

    int-to-float v14, v1

    .line 6640
    .local v14, "lineTop":F
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int v1, v1, v19

    int-to-float v8, v1

    .line 6641
    .local v8, "baseLine":F
    if-nez v11, :cond_94

    .line 6643
    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getTopPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v14, v1

    .line 6648
    :cond_94
    sub-float v1, v8, v14

    const v2, 0x3f266666    # 0.65f

    mul-float/2addr v1, v2

    add-float v3, v14, v1

    .line 6652
    move-object/from16 v0, p0

    iget-object v1, v0, mStrikeThroughPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    .line 6654
    int-to-float v2, v12

    int-to-float v1, v12

    add-float v4, v1, v10

    move-object/from16 v0, p0

    iget-object v6, v0, mStrikeThroughPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6622
    add-int/lit8 v11, v11, 0x1

    goto :goto_6d

    .line 6623
    .end local v8    # "baseLine":F
    .end local v10    # "currentLineLength":F
    .end local v14    # "lineTop":F
    .end local v15    # "lowerBound":F
    .end local v21    # "upperBound":F
    :cond_b9
    add-int/lit8 v1, v11, -0x1

    aget v15, v7, v1

    goto :goto_72

    .line 6630
    .restart local v10    # "currentLineLength":F
    .restart local v15    # "lowerBound":F
    .restart local v21    # "upperBound":F
    :cond_be
    cmpl-float v1, v17, v15

    if-lez v1, :cond_c9

    cmpg-float v1, v17, v21

    if-gtz v1, :cond_c9

    .line 6632
    sub-float v10, v17, v15

    goto :goto_7a

    .line 6633
    :cond_c9
    cmpl-float v1, v17, v21

    if-lez v1, :cond_7a

    .line 6635
    sub-float v10, v21, v15

    goto :goto_7a
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .registers 3

    .prologue
    .line 11495
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_d

    .line 11496
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 11498
    :cond_d
    return-void
.end method

.method private fixFocusableAndClickableSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2163
    iget-object v0, p0, mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_10

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1a

    .line 2164
    :cond_10
    invoke-virtual {p0, v2}, setFocusable(Z)V

    .line 2165
    invoke-virtual {p0, v2}, setClickable(Z)V

    .line 2166
    invoke-virtual {p0, v2}, setLongClickable(Z)V

    .line 2172
    :goto_19
    return-void

    .line 2168
    :cond_1a
    invoke-virtual {p0, v1}, setFocusable(Z)V

    .line 2169
    invoke-virtual {p0, v1}, setClickable(Z)V

    .line 2170
    invoke-virtual {p0, v1}, setLongClickable(Z)V

    goto :goto_19
.end method

.method private getBottomVerticalOffset(Z)I
    .registers 8
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5764
    const/4 v4, 0x0

    .line 5765
    .local v4, "voffset":I
    iget v5, p0, mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5767
    .local v1, "gravity":I
    iget-object v2, p0, mLayout:Landroid/text/Layout;

    .line 5768
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 5769
    iget-object v2, p0, mHintLayout:Landroid/text/Layout;

    .line 5772
    :cond_17
    const/16 v5, 0x50

    if-eq v1, v5, :cond_2b

    .line 5773
    invoke-direct {p0, v2}, getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5774
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5776
    .local v3, "textht":I
    if-ge v3, v0, :cond_2b

    .line 5777
    const/16 v5, 0x30

    if-ne v1, v5, :cond_2c

    .line 5778
    sub-int v4, v0, v3

    .line 5783
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_2b
    :goto_2b
    return v4

    .line 5780
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2c
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_2b
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .registers 6
    .param p1, "l"    # Landroid/text/Layout;

    .prologue
    .line 5733
    iget-object v2, p0, mParent:Landroid/view/ViewParent;

    invoke-static {v2}, isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 5734
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_c
    iget-object v2, p0, mHintLayout:Landroid/text/Layout;

    if-ne p1, v2, :cond_29

    invoke-virtual {p0}, getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .line 5737
    .local v1, "padding":I
    :goto_1a
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    .line 5733
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_26
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_c

    .line 5734
    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    :cond_29
    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_1a
.end method

.method private getDesiredHeight()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 8159
    iget-object v1, p0, mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_16

    :goto_d
    invoke-direct {p0, v2, v0}, getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .registers 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "cap"    # Z

    .prologue
    const/4 v6, 0x1

    .line 8165
    if-nez p1, :cond_5

    .line 8166
    const/4 v0, 0x0

    .line 8214
    :goto_4
    return v0

    .line 8169
    :cond_5
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 8170
    .local v2, "linecount":I
    invoke-virtual {p0}, getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 8171
    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 8173
    .local v0, "desired":I
    iget-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 8174
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_27

    .line 8175
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8176
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8179
    :cond_27
    add-int/2addr v0, v3

    .line 8181
    iget v4, p0, mMaxMode:I

    if-ne v4, v6, :cond_63

    .line 8186
    if-eqz p2, :cond_49

    .line 8187
    iget v4, p0, mMaximum:I

    if-le v2, v4, :cond_49

    .line 8188
    iget v4, p0, mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 8190
    if-eqz v1, :cond_46

    .line 8191
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8192
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8195
    :cond_46
    add-int/2addr v0, v3

    .line 8196
    iget v2, p0, mMaximum:I

    .line 8203
    :cond_49
    :goto_49
    iget v4, p0, mMinMode:I

    if-ne v4, v6, :cond_6a

    .line 8204
    iget v4, p0, mMinimum:I

    if-ge v2, v4, :cond_5a

    .line 8205
    invoke-virtual {p0}, getLineHeight()I

    move-result v4

    iget v5, p0, mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 8212
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8214
    goto :goto_4

    .line 8200
    :cond_63
    iget v4, p0, mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_49

    .line 8208
    :cond_6a
    iget v4, p0, mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5a
.end method

.method private getFudgedPaddingRight()I
    .registers 5

    .prologue
    .line 6070
    iget-object v1, p0, mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 6071
    .local v0, "cursorWidth":I
    const/4 v1, 0x0

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    .prologue
    .line 8663
    invoke-direct {p0, p1}, convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 8668
    if-nez p2, :cond_e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 8669
    :cond_e
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_21

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8670
    :cond_21
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 7561
    invoke-virtual {p0}, getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_48

    .line 7605
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7608
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_a
    return-object v0

    .line 7563
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_b
    iget v1, p0, mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_58

    .line 7580
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7581
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7565
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_17
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7566
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7568
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 7569
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7571
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7572
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7574
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_20
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 7575
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7577
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_23
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 7578
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7585
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_26
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7586
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7588
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_29
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 7589
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7591
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2c
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 7592
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_a

    .line 7594
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2f
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_38

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 7596
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_37
    goto :goto_a

    .line 7594
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_38
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_37

    .line 7598
    :pswitch_3b
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_44

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7600
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_43
    goto :goto_a

    .line 7598
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_44
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_43

    .line 7561
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_b
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_3b
    .end packed-switch

    .line 7563
    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_23
        0x3 -> :sswitch_1d
        0x5 -> :sswitch_20
        0x800003 -> :sswitch_17
        0x800005 -> :sswitch_1a
    .end sparse-switch
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 12095
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 12096
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 12097
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12098
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 12099
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 12100
    return-object v1
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "def"    # I

    .prologue
    .line 10062
    invoke-static {p0, p1}, getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 10063
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_7

    .line 10066
    .end local p2    # "def":I
    :goto_6
    return p2

    .restart local p2    # "def":I
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_6
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 10028
    if-nez p1, :cond_8

    .line 10030
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 10037
    :cond_8
    sget-object v4, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10038
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 10039
    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_2b

    .line 10040
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 10041
    .local v1, "ap":I
    if-eqz v1, :cond_2b

    .line 10042
    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10044
    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 10045
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10048
    .end local v1    # "ap":I
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    :cond_2b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10050
    return-object v3
.end method

.method private getTextForRectSelection(Landroid/graphics/Rect;)Ljava/lang/CharSequence;
    .registers 25
    .param p1, "selectedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 12551
    invoke-virtual/range {p0 .. p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12553
    .local v15, "text":Ljava/lang/CharSequence;
    if-nez v15, :cond_a

    .line 12554
    invoke-virtual/range {p0 .. p0}, getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12556
    :cond_a
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    if-nez v21, :cond_1a

    .line 12557
    :cond_18
    const/4 v9, 0x0

    .line 12603
    :goto_19
    return-object v9

    .line 12560
    :cond_1a
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 12561
    .local v20, "tvRect":Landroid/graphics/Rect;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 12563
    invoke-virtual/range {p0 .. p0}, getRootView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v12

    .line 12564
    .local v12, "startPos":Landroid/graphics/Point;
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Rect;->offset(II)V

    .line 12566
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v12

    .line 12568
    invoke-virtual/range {p0 .. p0}, getTotalPaddingTop()I

    move-result v19

    .line 12569
    .local v19, "topPadding":I
    invoke-virtual/range {p0 .. p0}, getTotalPaddingLeft()I

    move-result v7

    .line 12571
    .local v7, "leftPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    .line 12572
    .local v8, "lineCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, getScrollY()I

    move-result v22

    sub-int v17, v21, v22

    .line 12573
    .local v17, "textTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v21

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, getScrollY()I

    move-result v22

    sub-int v16, v21, v22

    .line 12575
    .local v16, "textBtm":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 12576
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 12578
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v21

    if-nez v21, :cond_c4

    .line 12579
    const/4 v9, 0x0

    goto/16 :goto_19

    .line 12582
    :cond_c4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    .line 12583
    .local v13, "startX":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v14, v21, v22

    .line 12584
    .local v14, "startY":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v5, v21, v22

    .line 12585
    .local v5, "endX":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v6, v21, v22

    .line 12587
    .local v6, "endY":I
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, getLineAtCoordinate(F)I

    move-result v10

    .line 12588
    .local v10, "startLine":I
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, getOffsetAtCoordinate(IF)I

    move-result v11

    .line 12590
    .local v11, "startOffset":I
    int-to-float v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, getLineAtCoordinate(F)I

    move-result v3

    .line 12591
    .local v3, "endLine":I
    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, getOffsetAtCoordinate(IF)I

    move-result v4

    .line 12593
    .local v4, "endOffset":I
    if-ltz v11, :cond_126

    if-ltz v4, :cond_126

    if-ne v11, v4, :cond_129

    .line 12594
    :cond_126
    const/4 v9, 0x0

    goto/16 :goto_19

    .line 12596
    :cond_129
    if-le v11, v4, :cond_130

    .line 12597
    move/from16 v18, v11

    .line 12598
    .local v18, "tmp":I
    move v11, v4

    .line 12599
    move/from16 v4, v18

    .line 12601
    .end local v18    # "tmp":I
    :cond_130
    invoke-interface {v15, v11, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 12603
    .local v9, "retText":Ljava/lang/CharSequence;
    goto/16 :goto_19
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .registers 3
    .param p1, "allowNullLocale"    # Z

    .prologue
    .line 10155
    invoke-direct {p0}, updateTextServicesLocaleAsync()V

    .line 10158
    iget-object v0, p0, mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    goto :goto_d
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 6282
    const/4 v0, 0x0

    .line 6283
    .local v0, "highlight":Landroid/graphics/Path;
    iget-object v1, p0, mHighlightPaint:Landroid/graphics/Paint;

    .line 6285
    .local v1, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, getSelectionStart()I

    move-result v7

    .line 6286
    .local v7, "selStart":I
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v6

    .line 6289
    .local v6, "selEnd":I
    iget-boolean v9, p0, mhasMultiSelection:Z

    if-eqz v9, :cond_67

    .line 6291
    invoke-virtual {p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v8

    .line 6292
    .local v8, "text":Ljava/lang/CharSequence;
    if-nez v8, :cond_1a

    .line 6293
    iput-boolean v14, p0, mhasMultiSelection:Z

    .line 6294
    const/4 v9, 0x0

    .line 6353
    .end local v8    # "text":Ljava/lang/CharSequence;
    :goto_19
    return-object v9

    .line 6297
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_1a
    iget-boolean v9, p0, mHighlightPathBogus:Z

    if-eqz v9, :cond_55

    .line 6298
    iget-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    if-nez v9, :cond_29

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    .line 6300
    :cond_29
    iget-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    move-object v9, v8

    .line 6302
    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v5

    .local v5, "multiSelStart":[I
    move-object v9, v8

    .line 6303
    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v4

    .line 6304
    .local v4, "multiSelEnd":[I
    check-cast v8, Landroid/text/Spannable;

    .end local v8    # "text":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v3

    .line 6306
    .local v3, "multiSelCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    if-ge v2, v3, :cond_53

    .line 6307
    iget-object v9, p0, mLayout:Landroid/text/Layout;

    aget v10, v5, v2

    aget v11, v4, v2

    iget-object v12, p0, mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9, v10, v11, v12}, Landroid/text/Layout;->addSelectionPath(IILandroid/graphics/Path;)V

    .line 6306
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 6309
    :cond_53
    iput-boolean v14, p0, mHighlightPathBogus:Z

    .line 6311
    .end local v2    # "i":I
    .end local v3    # "multiSelCount":I
    .end local v4    # "multiSelEnd":[I
    .end local v5    # "multiSelStart":[I
    :cond_55
    iget-object v9, p0, mMultiHighlightPaint:Landroid/graphics/Paint;

    iget v10, p0, mMultiHighlightColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 6312
    iget-object v9, p0, mMultiHighlightPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6313
    iget-object v0, p0, mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    .line 6315
    goto :goto_19

    .line 6319
    :cond_67
    iget-object v9, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v9, :cond_cf

    invoke-virtual {p0}, isFocused()Z

    move-result v9

    if-nez v9, :cond_77

    invoke-virtual {p0}, isPressed()Z

    move-result v9

    if-eqz v9, :cond_cf

    :cond_77
    if-ltz v7, :cond_cf

    .line 6320
    if-ne v7, v6, :cond_d2

    .line 6321
    iget-object v9, p0, mEditor:Landroid/widget/Editor;

    if-eqz v9, :cond_cf

    iget-object v9, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v9

    if-eqz v9, :cond_cf

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v9, p0, mEditor:Landroid/widget/Editor;

    iget-wide v12, v9, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x1f4

    cmp-long v9, v10, v12

    if-gez v9, :cond_cf

    .line 6324
    iget-boolean v9, p0, mHighlightPathBogus:Z

    if-eqz v9, :cond_bd

    .line 6325
    iget-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    if-nez v9, :cond_a8

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    .line 6326
    :cond_a8
    iget-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 6327
    iget-object v9, p0, mLayout:Landroid/text/Layout;

    iget-object v10, p0, mHighlightPath:Landroid/graphics/Path;

    iget-object v11, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v7, v10, v11}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 6328
    iget-object v9, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->updateCursorsPositions()V

    .line 6329
    iput-boolean v14, p0, mHighlightPathBogus:Z

    .line 6333
    :cond_bd
    iget v9, p0, mCurTextColor:I

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 6334
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6335
    iget v9, p0, mCursorWidth:I

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6336
    iget-object v0, p0, mHighlightPath:Landroid/graphics/Path;

    :cond_cf
    :goto_cf
    move-object v9, v0

    .line 6353
    goto/16 :goto_19

    .line 6339
    :cond_d2
    iget-boolean v9, p0, mHighlightPathBogus:Z

    if-eqz v9, :cond_ef

    .line 6340
    iget-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    if-nez v9, :cond_e1

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    .line 6341
    :cond_e1
    iget-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 6342
    iget-object v9, p0, mLayout:Landroid/text/Layout;

    iget-object v10, p0, mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v6, v10}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 6343
    iput-boolean v14, p0, mHighlightPathBogus:Z

    .line 6347
    :cond_ef
    iget v9, p0, mHighlightColor:I

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 6348
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6350
    iget-object v0, p0, mHighlightPath:Landroid/graphics/Path;

    goto :goto_cf
.end method

.method private hideMultiSelectPopupWindow()V
    .registers 2

    .prologue
    .line 13734
    iget-object v0, p0, mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->hideMultiSelectPopupWindow()V

    .line 13735
    return-void
.end method

.method private initTextStrikeThroughAnim(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6556
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, mStrikeThroughPaint:Landroid/graphics/Paint;

    .line 6557
    iget-object v1, p0, mStrikeThroughPaint:Landroid/graphics/Paint;

    iget v2, p0, mCurTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6558
    invoke-virtual {p0}, getTextSize()F

    move-result v1

    const v2, 0x3d638e39

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 6559
    .local v0, "strokeWidth":F
    iget-object v1, p0, mStrikeThroughPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6564
    iget-object v1, p0, mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_4c

    .line 6565
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_4e

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    .line 6566
    iget-object v1, p0, mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6567
    iget-object v1, p0, mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6572
    iget-object v1, p0, mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/widget/TextView$3;

    invoke-direct {v2, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6580
    :cond_4c
    return-void

    .line 6565
    nop

    :array_4e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private invalidateCursor(III)V
    .registers 7
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 5836
    if-gez p1, :cond_6

    if-gez p2, :cond_6

    if-ltz p3, :cond_1a

    .line 5837
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5838
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5839
    .local v0, "end":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, invalidateRegion(IIZ)V

    .line 5841
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1a
    return-void
.end method

.method private isCarMode()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12344
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_19

    .line 12345
    const-string v1, "TextView"

    const-string v2, "TextView does not support text selection on Carmode."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12348
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method private isCoverOpened()Z
    .registers 6

    .prologue
    .line 12324
    iget-object v3, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v3, :cond_25

    .line 12326
    :try_start_4
    const-string v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 12327
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_23

    .line 12328
    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 12329
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_23

    .line 12330
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1b

    move-result v3

    .line 12339
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :goto_1a
    return v3

    .line 12333
    :catch_1b
    move-exception v1

    .line 12334
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TextView"

    const-string v4, "isCoverOpened() : RemoteException!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12339
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    const/4 v3, 0x1

    goto :goto_1a

    .line 12337
    :cond_25
    const-string v3, "TextView"

    const-string v4, "isCoverOpened() : mCoverManager is null!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private isDisabledStylusPenEvent()Z
    .registers 3

    .prologue
    .line 13341
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    .line 13342
    .local v0, "packName":Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 13343
    const-string v1, "flipboard.boxer.app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 13347
    :cond_28
    const/4 v1, 0x1

    .line 13350
    :goto_29
    return v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method

.method private isFinishSetupWizard()Z
    .registers 3

    .prologue
    .line 12373
    const-string v0, "FINISH"

    const-string/jumbo v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12374
    const/4 v0, 0x1

    .line 12377
    :goto_10
    return v0

    .line 12376
    :cond_11
    const-string v0, "TextView"

    const-string v1, "Setup Wizard is not finished."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12377
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private isKeyguardLocked()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 12353
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-nez v2, :cond_d

    .line 12354
    const-string v2, "TextView"

    const-string v3, "isKeyguardLocked. context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12368
    :cond_c
    :goto_c
    return v0

    .line 12358
    :cond_d
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 12359
    .local v1, "keyGuard":Landroid/app/KeyguardManager;
    if-nez v1, :cond_21

    .line 12360
    const-string v2, "TextView"

    const-string v3, "keyGuard Service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 12364
    :cond_21
    const/4 v0, 0x0

    .line 12365
    .local v0, "isLocked":Z
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 12366
    if-eqz v0, :cond_c

    const-string v2, "TextView"

    const-string v3, "Keyguard is Locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private isLinkPreviewEnabled(I)Z
    .registers 3
    .param p1, "toolType"    # I

    .prologue
    .line 12289
    const/4 v0, 0x0

    .line 12291
    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_e

    .line 12300
    const/4 v0, 0x0

    .line 12303
    :goto_5
    return v0

    .line 12293
    :pswitch_6
    invoke-direct {p0}, isLinkPreviewSettingsEnabled()Z

    move-result v0

    .line 12294
    goto :goto_5

    .line 12297
    :pswitch_b
    const/4 v0, 0x0

    .line 12298
    goto :goto_5

    .line 12291
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method private isLinkPreviewSettingsEnabled()Z
    .registers 7

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12308
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_25

    move v0, v1

    .line 12309
    .local v0, "isSPenHoveringOn":Z
    :goto_13
    if-eqz v0, :cond_27

    .line 12310
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_link_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_27

    .line 12313
    :goto_24
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_25
    move v0, v2

    .line 12308
    goto :goto_13

    .restart local v0    # "isSPenHoveringOn":Z
    :cond_27
    move v1, v2

    .line 12313
    goto :goto_24
.end method

.method private static isMultilineInputType(I)Z
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 5130
    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isPasswordInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .prologue
    .line 5259
    and-int/lit16 v0, p0, 0xfff

    .line 5261
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_e

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_e

    const/16 v1, 0x12

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isShowingHint()Z
    .registers 2

    .prologue
    .line 8323
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isSubWindow()Z
    .registers 5

    .prologue
    .line 12381
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12382
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1d

    move-object v1, v0

    .line 12383
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 12384
    .local v1, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_1d

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_1d

    .line 12386
    const/4 v2, 0x1

    .line 12389
    .end local v1    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private static isVisiblePasswordInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .prologue
    .line 5270
    and-int/lit16 v0, p0, 0xfff

    .line 5272
    .local v0, "variation":I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private logLetterMode(I)V
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 5347
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5367
    :cond_6
    :goto_6
    return-void

    .line 5350
    :cond_7
    and-int/lit8 v0, p1, 0xf

    .line 5352
    .local v0, "cls":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 5354
    const/4 v1, 0x0

    .line 5356
    .local v1, "shift":I
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_31

    .line 5357
    const/4 v1, 0x2

    .line 5365
    :goto_12
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>KEYSELECT: SHIFT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5358
    :cond_31
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_37

    .line 5359
    const/4 v1, 0x3

    goto :goto_12

    .line 5360
    :cond_37
    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_3d

    .line 5361
    const/4 v1, 0x1

    goto :goto_12

    .line 5363
    :cond_3d
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .registers 46
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .prologue
    .line 7753
    const/16 v33, 0x0

    .line 7754
    .local v33, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 7757
    .local v17, "transformed":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v2, v0, mUseDisplayText:Z

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, isMultiPenSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7758
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 7762
    :cond_1a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_80

    move-object/from16 v0, p0

    iget v2, v0, mEllipsisKeywordStart:I

    if-ltz v2, :cond_80

    move-object/from16 v0, p0

    iget v2, v0, mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget-object v4, v0, mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_80

    .line 7763
    move-object/from16 v0, p0

    iget-object v2, v0, mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7764
    .local v5, "len":I
    new-array v3, v5, [C

    .line 7765
    .local v3, "chars":[C
    new-array v9, v5, [F

    .line 7766
    .local v9, "widths":[F
    const/4 v2, 0x1

    new-array v0, v2, [C

    move-object/from16 v29, v0

    const/4 v2, 0x0

    const/16 v4, 0x2026

    aput-char v4, v29, v2

    .line 7768
    .local v29, "ELLIPSIS_NORMAL":[C
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 7770
    new-instance v35, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget v4, v0, mEllipsisKeywordStart:I

    sub-int v4, v5, v4

    move-object/from16 v0, v35

    invoke-direct {v0, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 7771
    .local v35, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v37

    .line 7772
    .local v37, "tmpwid":F
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v4, v6}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v31

    .line 7774
    .local v31, "ellipsWid":F
    move-object/from16 v0, p0

    iget v2, v0, mEllipsisKeywordStart:I

    if-nez v2, :cond_133

    .line 7775
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 7809
    .end local v3    # "chars":[C
    .end local v5    # "len":I
    .end local v9    # "widths":[F
    .end local v29    # "ELLIPSIS_NORMAL":[C
    .end local v31    # "ellipsWid":F
    .end local v35    # "s":Ljava/lang/String;
    .end local v37    # "tmpwid":F
    :cond_80
    :goto_80
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_1c4

    .line 7810
    new-instance v15, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, mBreakStrategy:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, mHyphenationFrequency:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_1c0

    move-object/from16 v27, p6

    :goto_c2
    move/from16 v19, p1

    move-object/from16 v20, p4

    move/from16 v28, p3

    invoke-direct/range {v15 .. v28}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    .line 7853
    .end local v33    # "result":Landroid/text/Layout;
    .local v15, "result":Landroid/text/Layout;
    :cond_cb
    :goto_cb
    if-nez v15, :cond_132

    .line 7854
    const/4 v2, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v2, v4, v6, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, mSpacingAdd:F

    move-object/from16 v0, p0

    iget v6, v0, mSpacingMult:F

    invoke-virtual {v2, v4, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, mIncludePad:Z

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, mBreakStrategy:I

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, mHyphenationFrequency:I

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v30

    .line 7862
    .local v30, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz p5, :cond_12e

    .line 7863
    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, mMaxMode:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2be

    move-object/from16 v0, p0

    iget v2, v0, mMaximum:I

    :goto_12b
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 7868
    :cond_12e
    invoke-virtual/range {v30 .. v30}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v15

    .line 7870
    .end local v30    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_132
    return-object v15

    .line 7777
    .end local v15    # "result":Landroid/text/Layout;
    .restart local v3    # "chars":[C
    .restart local v5    # "len":I
    .restart local v9    # "widths":[F
    .restart local v29    # "ELLIPSIS_NORMAL":[C
    .restart local v31    # "ellipsWid":F
    .restart local v33    # "result":Landroid/text/Layout;
    .restart local v35    # "s":Ljava/lang/String;
    .restart local v37    # "tmpwid":F
    :cond_133
    add-float v2, v37, v31

    move/from16 v0, p3

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_140

    .line 7778
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_80

    .line 7780
    :cond_140
    const/16 v32, 0x0

    .local v32, "i":I
    const/16 v36, 0x0

    .line 7781
    .local v36, "sum":I
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v5

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v34

    .line 7783
    .local v34, "ret":F
    const/16 v32, 0x0

    :goto_153
    move-object/from16 v0, p0

    iget v2, v0, mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_16b

    .line 7784
    move/from16 v0, v36

    int-to-float v2, v0

    aget v4, v9, v32

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v36, v0

    .line 7785
    move/from16 v0, v36

    int-to-float v2, v0

    cmpg-float v2, v31, v2

    if-gtz v2, :cond_18b

    .line 7789
    :cond_16b
    move-object/from16 v0, p0

    iget v2, v0, mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_1bc

    .line 7790
    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-char v4, v29, v4

    aput-char v4, v3, v2

    .line 7791
    const/16 v32, 0x1

    :goto_17b
    move-object/from16 v0, p0

    iget v2, v0, mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_18e

    .line 7792
    const v2, 0xfeff

    aput-char v2, v3, v32

    .line 7791
    add-int/lit8 v32, v32, 0x1

    goto :goto_17b

    .line 7783
    :cond_18b
    add-int/lit8 v32, v32, 0x1

    goto :goto_153

    .line 7794
    :cond_18e
    new-instance v35, Ljava/lang/String;

    .end local v35    # "s":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-direct {v0, v3, v2, v5}, Ljava/lang/String;-><init>([CII)V

    .line 7795
    .restart local v35    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mTransformed:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_1b9

    .line 7796
    new-instance v14, Landroid/text/SpannableString;

    move-object/from16 v0, v35

    invoke-direct {v14, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7797
    .local v14, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v10, v0, mTransformed:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    const/4 v11, 0x0

    const-class v13, Ljava/lang/Object;

    const/4 v15, 0x0

    move v12, v5

    invoke-static/range {v10 .. v15}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 7798
    move-object/from16 v17, v14

    .line 7802
    .end local v14    # "ss":Landroid/text/SpannableString;
    :goto_1b5
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_80

    .line 7800
    :cond_1b9
    move-object/from16 v17, v35

    goto :goto_1b5

    .line 7804
    :cond_1bc
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_80

    .line 7810
    .end local v3    # "chars":[C
    .end local v5    # "len":I
    .end local v9    # "widths":[F
    .end local v29    # "ELLIPSIS_NORMAL":[C
    .end local v31    # "ellipsWid":F
    .end local v32    # "i":I
    .end local v34    # "ret":F
    .end local v35    # "s":Ljava/lang/String;
    .end local v36    # "sum":I
    .end local v37    # "tmpwid":F
    :cond_1c0
    const/16 v27, 0x0

    goto/16 :goto_c2

    .line 7815
    :cond_1c4
    sget-object v2, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1e4

    .line 7816
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v6, v0, mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v4, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 7817
    if-eqz p2, :cond_1e4

    .line 7818
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7822
    :cond_1e4
    if-eqz p2, :cond_2c3

    .line 7823
    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_256

    if-eqz p6, :cond_1f8

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_256

    .line 7825
    :cond_1f8
    if-eqz p7, :cond_233

    move-object/from16 v0, p0

    iget-object v2, v0, mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_233

    .line 7826
    move-object/from16 v0, p0

    iget-object v0, v0, mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    .line 7835
    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    :goto_228
    if-eqz p7, :cond_cb

    move-object v2, v15

    .line 7836
    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_cb

    .line 7830
    .end local v15    # "result":Landroid/text/Layout;
    .restart local v33    # "result":Landroid/text/Layout;
    :cond_233
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-static/range {v17 .. v24}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    goto :goto_228

    .line 7838
    .end local v15    # "result":Landroid/text/Layout;
    .restart local v33    # "result":Landroid/text/Layout;
    :cond_256
    if-eqz p5, :cond_2c3

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_2c3

    .line 7839
    if-eqz p7, :cond_296

    move-object/from16 v0, p0

    iget-object v2, v0, mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_296

    .line 7840
    move-object/from16 v0, p0

    iget-object v0, v0, mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_cb

    .line 7845
    .end local v15    # "result":Landroid/text/Layout;
    .restart local v33    # "result":Landroid/text/Layout;
    :cond_296
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-static/range {v17 .. v26}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_cb

    .line 7863
    .restart local v30    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_2be
    const v2, 0x7fffffff

    goto/16 :goto_12b

    .end local v15    # "result":Landroid/text/Layout;
    .end local v30    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v33    # "result":Landroid/text/Layout;
    :cond_2c3
    move-object/from16 v15, v33

    .end local v33    # "result":Landroid/text/Layout;
    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_cb
.end method

.method private nullLayouts()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7523
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_11

    .line 7524
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, mSavedLayout:Landroid/text/BoringLayout;

    .line 7526
    :cond_11
    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_21

    iget-object v0, p0, mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_21

    .line 7527
    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, mSavedHintLayout:Landroid/text/BoringLayout;

    .line 7530
    :cond_21
    iput-object v1, p0, mHintLayout:Landroid/text/Layout;

    iput-object v1, p0, mLayout:Landroid/text/Layout;

    iput-object v1, p0, mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7532
    iput-object v1, p0, mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v1, p0, mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7535
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_34

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 7536
    :cond_34
    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .registers 5
    .param p1, "dimens"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1765
    if-nez p1, :cond_4

    .line 1766
    const/4 v1, 0x0

    .line 1772
    :cond_3
    return-object v1

    .line 1768
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v1, v2, [I

    .line 1769
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 1770
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, v1, v0

    .line 1769
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private paste(IIZ)V
    .registers 16
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "withFormatting"    # Z

    .prologue
    .line 11109
    iget-object v9, p0, mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v9}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v9

    if-nez v9, :cond_65

    .line 11110
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 11112
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 11113
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_65

    .line 11114
    const/4 v4, 0x0

    .line 11115
    .local v4, "didFirst":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1c
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-ge v6, v9, :cond_5d

    .line 11116
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11117
    .local v7, "paste":Ljava/lang/CharSequence;
    if-eqz v7, :cond_41

    .line 11118
    if-nez v4, :cond_44

    .line 11119
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11120
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-interface {v9, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11121
    const/4 v4, 0x1

    .line 11115
    :cond_41
    :goto_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 11123
    :cond_44
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v10

    const-string v11, "\n"

    invoke-interface {v9, v10, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11124
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v10

    invoke-interface {v9, v10, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_41

    .line 11128
    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_5d
    invoke-virtual {p0}, stopTextActionMode()V

    .line 11129
    const-wide/16 v10, 0x0

    sput-wide v10, sLastCutCopyOrTextChangedTime:J

    .line 11201
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v4    # "didFirst":Z
    .end local v6    # "i":I
    :cond_64
    :goto_64
    return-void

    .line 11136
    :cond_65
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 11137
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8b

    .line 11139
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 11140
    .local v3, "clipdataTemp":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/sec/clipboard/ClipboardExManager;->requestPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 11141
    const-wide/16 v10, 0x0

    sput-wide v10, sLastCutCopyOrTextChangedTime:J

    goto :goto_64

    .line 11146
    .end local v3    # "clipdataTemp":Landroid/sec/clipboard/data/ClipboardData;
    :cond_8b
    :try_start_8b
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 11147
    .local v2, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v2, :cond_64

    .line 11148
    const/4 v7, 0x0

    .line 11149
    .restart local v7    # "paste":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 11150
    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_a6

    .line 11151
    if-eqz p3, :cond_d2

    instance-of v9, v8, Landroid/text/Spanned;

    if-eqz v9, :cond_d2

    move-object v7, v8

    .line 11153
    :cond_a6
    :goto_a6
    if-eqz v7, :cond_64

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_64

    .line 11154
    invoke-virtual {p0, v7}, removeEasyEditSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11155
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11157
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-interface {v9, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11158
    invoke-virtual {p0}, stopTextActionMode()V

    .line 11159
    const-wide/16 v10, 0x0

    sput-wide v10, sLastCutCopyOrTextChangedTime:J
    :try_end_c7
    .catch Ljava/lang/ClassCastException; {:try_start_8b .. :try_end_c7} :catch_c8

    goto :goto_64

    .line 11162
    .end local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7    # "paste":Ljava/lang/CharSequence;
    .end local v8    # "text":Ljava/lang/CharSequence;
    :catch_c8
    move-exception v5

    .line 11163
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string v9, "TextView"

    const-string/jumbo v10, "skip to paste clipdata - ClassCastException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 11151
    .end local v5    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .restart local v7    # "paste":Ljava/lang/CharSequence;
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_d2
    :try_start_d2
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_d5
    .catch Ljava/lang/ClassCastException; {:try_start_d2 .. :try_end_d5} :catch_c8

    move-result-object v7

    goto :goto_a6

    .line 11170
    .end local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7    # "paste":Ljava/lang/CharSequence;
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_d7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 11172
    .restart local v1    # "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 11173
    .restart local v0    # "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_64

    .line 11174
    const/4 v4, 0x0

    .line 11175
    .restart local v4    # "didFirst":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_eb
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-ge v6, v9, :cond_145

    .line 11177
    if-eqz p3, :cond_115

    .line 11178
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11184
    .restart local v7    # "paste":Ljava/lang/CharSequence;
    :goto_ff
    if-eqz v7, :cond_112

    .line 11185
    if-nez v4, :cond_12c

    .line 11186
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11187
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-interface {v9, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11188
    const/4 v4, 0x1

    .line 11175
    :cond_112
    :goto_112
    add-int/lit8 v6, v6, 0x1

    goto :goto_eb

    .line 11181
    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_115
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 11182
    .restart local v8    # "text":Ljava/lang/CharSequence;
    instance-of v9, v8, Landroid/text/Spanned;

    if-eqz v9, :cond_12a

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "paste":Ljava/lang/CharSequence;
    :goto_129
    goto :goto_ff

    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_12a
    move-object v7, v8

    goto :goto_129

    .line 11190
    .end local v8    # "text":Ljava/lang/CharSequence;
    .restart local v7    # "paste":Ljava/lang/CharSequence;
    :cond_12c
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v10

    const-string v11, "\n"

    invoke-interface {v9, v10, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11191
    iget-object v9, p0, mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v10

    invoke-interface {v9, v10, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_112

    .line 11195
    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_145
    invoke-virtual {p0}, stopTextActionMode()V

    .line 11196
    const-wide/16 v10, 0x0

    sput-wide v10, sLastCutCopyOrTextChangedTime:J

    goto/16 :goto_64
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 16
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v13, 0x0

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, "min":I
    iget-object v12, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 499
    .local v2, "max":I
    iget-object v12, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 501
    .local v6, "prevString":Ljava/lang/CharSequence;
    iget-object v12, p0, mText:Ljava/lang/CharSequence;

    instance-of v12, v12, Landroid/text/Editable;

    if-eqz v12, :cond_1a

    invoke-virtual {p0}, hasFocus()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 557
    :cond_1a
    :goto_1a
    return-void

    .line 505
    :cond_1b
    if-eqz p1, :cond_1a

    .line 509
    invoke-virtual {p0}, isFocused()Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 510
    invoke-virtual {p0}, getSelectionStart()I

    move-result v8

    .line 511
    .local v8, "selStart":I
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v7

    .line 513
    .local v7, "selEnd":I
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 514
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 516
    .end local v7    # "selEnd":I
    .end local v8    # "selStart":I
    :cond_3b
    const/4 v5, 0x0

    .line 518
    .local v5, "paste":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v12

    packed-switch v12, :pswitch_data_ae

    .line 547
    :cond_43
    :goto_43
    :pswitch_43
    if-eqz v5, :cond_1a

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_1a

    .line 548
    invoke-virtual {p0, v5}, removeEasyEditSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 549
    iget-object v12, p0, mText:Ljava/lang/CharSequence;

    check-cast v12, Landroid/text/Spannable;

    invoke-static {v12, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 550
    iget-object v12, p0, mText:Ljava/lang/CharSequence;

    instance-of v12, v12, Landroid/text/Spanned;

    if-eqz v12, :cond_62

    .line 551
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 552
    .local v9, "sp":Landroid/text/Spannable;
    move-object v5, v9

    .line 554
    .end local v9    # "sp":Landroid/text/Spannable;
    :cond_62
    iget-object v12, p0, mText:Ljava/lang/CharSequence;

    check-cast v12, Landroid/text/Editable;

    invoke-interface {v12, v3, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 555
    invoke-virtual {p0}, stopTextActionMode()V

    goto :goto_1a

    :pswitch_6d
    move-object v10, p1

    .line 520
    check-cast v10, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 521
    .local v10, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 522
    goto :goto_43

    .end local v10    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_75
    move-object v0, p1

    .line 524
    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 525
    .local v0, "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v5

    .line 526
    goto :goto_43

    .end local v0    # "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :pswitch_7d
    move-object v11, p1

    .line 530
    check-cast v11, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 531
    .local v11, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v11}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    goto :goto_43

    .end local v11    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_89
    move-object v4, p1

    .line 534
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .line 535
    .local v4, "multipleUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_43

    .line 536
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    .end local v4    # "multipleUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    :pswitch_9b
    move-object v1, p1

    .line 540
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 541
    .local v1, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_43

    .line 542
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    .line 518
    nop

    :pswitch_data_ae
    .packed-switch 0x2
        :pswitch_6d
        :pswitch_43
        :pswitch_75
        :pswitch_7d
        :pswitch_9b
        :pswitch_89
    .end packed-switch
.end method

.method private registerForPreDraw()V
    .registers 2

    .prologue
    .line 5902
    iget-boolean v0, p0, mPreDrawRegistered:Z

    if-nez v0, :cond_e

    .line 5903
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5904
    const/4 v0, 0x1

    iput-boolean v0, p0, mPreDrawRegistered:Z

    .line 5906
    :cond_e
    return-void
.end method

.method private registerForStylusPenEvent()V
    .registers 4

    .prologue
    .line 13315
    iget-object v1, p0, mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    if-eqz v1, :cond_5

    .line 13329
    :cond_4
    :goto_4
    return-void

    .line 13318
    :cond_5
    iget-boolean v1, p0, mEnableMultiSelection:Z

    if-nez v1, :cond_d

    .line 13319
    invoke-direct {p0}, removeForStylusPenEvent()V

    goto :goto_4

    .line 13322
    :cond_d
    invoke-direct {p0}, isDisabledStylusPenEvent()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13326
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13327
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Landroid/widget/TextView$StylusEventListener;

    invoke-direct {v1, p0, p0}, Landroid/widget/TextView$StylusEventListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v1, p0, mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    .line 13328
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    goto :goto_4
.end method

.method private removeForStylusPenEvent()V
    .registers 3

    .prologue
    .line 13332
    iget-object v1, p0, mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    if-nez v1, :cond_5

    .line 13338
    :goto_4
    return-void

    .line 13335
    :cond_5
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13336
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 13337
    const/4 v1, 0x0

    iput-object v1, p0, mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    goto :goto_4
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 9125
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_7

    .line 9136
    :cond_6
    return-void

    .line 9126
    :cond_7
    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 9128
    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 9129
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    .line 9130
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_6

    .line 9131
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 9132
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 9133
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_6

    if-eq v3, p2, :cond_6

    .line 9134
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 9130
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .registers 6
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7380
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 7381
    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    .line 7382
    .local v0, "i":I
    :goto_7
    if-lez v0, :cond_11

    .line 7383
    add-int/lit8 v0, v0, -0x1

    .line 7384
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_7

    .line 7386
    :cond_11
    return-void
.end method

.method private requestWritingBuddy()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 13631
    const-string v1, "TextView"

    const-string v2, "Request WritingBuddy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13632
    invoke-virtual {p0}, isWritingBuddyEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, v0}, getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->show()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 13635
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private restartMarqueeIfNeeded()V
    .registers 3

    .prologue
    .line 5666
    iget-boolean v0, p0, mRestartMarquee:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_10

    .line 5667
    const/4 v0, 0x0

    iput-boolean v0, p0, mRestartMarquee:Z

    .line 5668
    invoke-direct {p0}, startMarquee()V

    .line 5670
    :cond_10
    return-void
.end method

.method private selectCurrentWordForMultiSelection(II)Z
    .registers 16
    .param p1, "minOffset"    # I
    .param p2, "maxOffset"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 12909
    invoke-virtual {p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v4

    .line 12910
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_b

    move v8, v9

    .line 12967
    .end local v4    # "text":Ljava/lang/CharSequence;
    :goto_a
    return v8

    .line 12912
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_b
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 12916
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/MultiSelection;->selectAll(Landroid/text/Spannable;)V

    move v8, v10

    .line 12917
    goto :goto_a

    .line 12920
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_18
    invoke-virtual {p0}, getInputType()I

    move-result v0

    .line 12921
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    .line 12922
    .local v1, "klass":I
    and-int/lit16 v7, v0, 0xff0

    .line 12925
    .local v7, "variation":I
    const/4 v8, 0x2

    if-eq v1, v8, :cond_39

    const/4 v8, 0x3

    if-eq v1, v8, :cond_39

    const/4 v8, 0x4

    if-eq v1, v8, :cond_39

    const/16 v8, 0x10

    if-eq v7, v8, :cond_39

    const/16 v8, 0x20

    if-eq v7, v8, :cond_39

    const/16 v8, 0xd0

    if-eq v7, v8, :cond_39

    const/16 v8, 0xb0

    if-ne v7, v8, :cond_40

    .line 12932
    :cond_39
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/MultiSelection;->selectAll(Landroid/text/Spannable;)V

    move v8, v10

    .line 12933
    goto :goto_a

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_40
    move-object v8, v4

    .line 12939
    check-cast v8, Landroid/text/Spanned;

    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {v8, p1, p2, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 12940
    .local v6, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v8, v6

    if-lt v8, v10, :cond_64

    .line 12941
    aget-object v5, v6, v9

    .local v5, "urlSpan":Landroid/text/style/URLSpan;
    move-object v8, v4

    .line 12942
    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .local v3, "selectionStart":I
    move-object v8, v4

    .line 12943
    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 12959
    .end local v5    # "urlSpan":Landroid/text/style/URLSpan;
    .local v2, "selectionEnd":I
    :cond_5e
    if-ltz v3, :cond_62

    if-gez v2, :cond_8d

    :cond_62
    move v8, v9

    .line 12960
    goto :goto_a

    .line 12945
    .end local v2    # "selectionEnd":I
    .end local v3    # "selectionStart":I
    :cond_64
    iget-object v8, p0, mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    if-nez v8, :cond_73

    .line 12946
    new-instance v8, Landroid/text/method/WordIterator;

    invoke-virtual {p0}, getTextServicesLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v8, p0, mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    .line 12948
    :cond_73
    iget-object v8, p0, mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, v4, p1, p2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 12949
    iget-object v8, p0, mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, p1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v3

    .line 12950
    .restart local v3    # "selectionStart":I
    iget-object v8, p0, mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, p2}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v2

    .line 12952
    .restart local v2    # "selectionEnd":I
    if-eq v3, v12, :cond_8a

    if-eq v2, v12, :cond_8a

    if-ne v3, v2, :cond_5e

    :cond_8a
    move v8, v9

    .line 12955
    goto/16 :goto_a

    .line 12962
    :cond_8d
    if-ge v3, v2, :cond_99

    .line 12963
    iput-boolean v9, p0, mIsTouchDown:Z

    .line 12964
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v2}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    move v8, v10

    .line 12965
    goto/16 :goto_a

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_99
    move v8, v9

    .line 12967
    goto/16 :goto_a
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 9110
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 9111
    iget-object v2, p0, mListeners:Ljava/util/ArrayList;

    .line 9112
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9113
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 9114
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 9113
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 9119
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 9120
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 9121
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .registers 9
    .param p1, "e"    # Landroid/text/Editable;
    .param p2, "filters"    # [Landroid/text/InputFilter;

    .prologue
    const/4 v4, 0x0

    .line 5695
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_44

    .line 5696
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    if-eqz v5, :cond_42

    const/4 v3, 0x1

    .line 5697
    .local v3, "undoFilter":Z
    :goto_c
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v0, v5, Landroid/text/InputFilter;

    .line 5698
    .local v0, "keyFilter":Z
    const/4 v2, 0x0

    .line 5699
    .local v2, "num":I
    if-eqz v3, :cond_17

    add-int/lit8 v2, v2, 0x1

    .line 5700
    :cond_17
    if-eqz v0, :cond_1b

    add-int/lit8 v2, v2, 0x1

    .line 5701
    :cond_1b
    if-lez v2, :cond_44

    .line 5702
    array-length v5, p2

    add-int/2addr v5, v2

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 5704
    .local v1, "nf":[Landroid/text/InputFilter;
    array-length v5, p2

    invoke-static {p2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5705
    const/4 v2, 0x0

    .line 5706
    if-eqz v3, :cond_31

    .line 5707
    array-length v4, p2

    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v5, v1, v4

    .line 5708
    add-int/lit8 v2, v2, 0x1

    .line 5710
    :cond_31
    if-eqz v0, :cond_3e

    .line 5711
    array-length v4, p2

    add-int v5, v4, v2

    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v1, v5

    .line 5714
    :cond_3e
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 5719
    .end local v0    # "keyFilter":Z
    .end local v1    # "nf":[Landroid/text/InputFilter;
    .end local v2    # "num":I
    .end local v3    # "undoFilter":Z
    :goto_41
    return-void

    :cond_42
    move v3, v4

    .line 5696
    goto :goto_c

    .line 5718
    :cond_44
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_41
.end method

.method private setInputType(IZ)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5295
    and-int/lit8 v2, p1, 0xf

    .line 5297
    .local v2, "cls":I
    if-ne v2, v4, :cond_40

    .line 5298
    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_2d

    move v0, v4

    .line 5300
    .local v0, "autotext":Z
    :goto_d
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_2f

    .line 5301
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 5309
    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_13
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 5331
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_17
    invoke-virtual {p0, p1}, setRawInputType(I)V

    .line 5332
    if-eqz p2, :cond_79

    .line 5333
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5334
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 5340
    :goto_23
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5341
    invoke-direct {p0, p1}, logLetterMode(I)V

    .line 5343
    :cond_2c
    return-void

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_2d
    move v0, v5

    .line 5298
    goto :goto_d

    .line 5302
    .restart local v0    # "autotext":Z
    :cond_2f
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_36

    .line 5303
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 5304
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_36
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3d

    .line 5305
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 5307
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3d
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_13

    .line 5310
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_40
    const/4 v6, 0x2

    if-ne v2, v6, :cond_55

    .line 5311
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_51

    move v6, v4

    :goto_48
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_53

    :goto_4c
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_17

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_51
    move v6, v5

    goto :goto_48

    :cond_53
    move v4, v5

    goto :goto_4c

    .line 5314
    :cond_55
    const/4 v4, 0x4

    if-ne v2, v4, :cond_6c

    .line 5315
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_7e

    .line 5323
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 5324
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_17

    .line 5317
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_62
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 5318
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_17

    .line 5320
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_67
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 5321
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_17

    .line 5326
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_6c
    const/4 v4, 0x3

    if-ne v2, v4, :cond_74

    .line 5327
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_17

    .line 5329
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_74
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_17

    .line 5336
    :cond_79
    invoke-direct {p0, v3}, setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_23

    .line 5315
    nop

    :sswitch_data_7e
    .sparse-switch
        0x10 -> :sswitch_62
        0x20 -> :sswitch_67
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .registers 5
    .param p1, "singleLine"    # Z

    .prologue
    .line 8809
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_19

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 8811
    if-eqz p1, :cond_1a

    .line 8812
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 8817
    :cond_19
    :goto_19
    return-void

    .line 8814
    :cond_1a
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_19
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .registers 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 2114
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 2125
    :cond_6
    :goto_6
    return-void

    .line 2116
    :cond_7
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 2117
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_6

    .line 2118
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 2119
    if-eqz p1, :cond_21

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_21

    .line 2120
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    .line 2123
    :cond_21
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    goto :goto_6
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .registers 6
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 11216
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 11218
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 11219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, sLastCutCopyOrTextChangedTime:J

    .line 11220
    return-void
.end method

.method private setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V
    .registers 4
    .param p1, "clip"    # Landroid/sec/clipboard/data/list/ClipboardDataText;

    .prologue
    .line 11224
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 11226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, sLastCutCopyOrTextChangedTime:J

    .line 11227
    return-void
.end method

.method private setRawTextSize(F)V
    .registers 3
    .param p1, "size"    # F

    .prologue
    .line 3259
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 3260
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3262
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 3263
    invoke-direct {p0}, nullLayouts()V

    .line 3264
    invoke-virtual {p0}, requestLayout()V

    .line 3265
    invoke-virtual {p0}, invalidate()V

    .line 3268
    :cond_1c
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1832
    if-nez p1, :cond_6

    if-eqz p2, :cond_74

    :cond_6
    move v2, v5

    .line 1833
    .local v2, "hasRelativeDrawables":Z
    :goto_7
    if-eqz v2, :cond_73

    .line 1834
    iget-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 1835
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_18

    .line 1836
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 1838
    :cond_18
    iget-object v6, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 1839
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1840
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v3

    .line 1841
    .local v3, "state":[I
    if-eqz p1, :cond_76

    .line 1842
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1843
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1844
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1845
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1847
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1848
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1849
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1853
    :goto_46
    if-eqz p2, :cond_7b

    .line 1854
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1855
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1856
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1857
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1859
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1860
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1861
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1865
    :goto_6a
    invoke-virtual {p0}, resetResolvedDrawables()V

    .line 1866
    invoke-virtual {p0}, resolveDrawables()V

    .line 1867
    invoke-direct {p0}, applyCompoundDrawableTint()V

    .line 1869
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_73
    return-void

    .end local v2    # "hasRelativeDrawables":Z
    :cond_74
    move v2, v4

    .line 1832
    goto :goto_7

    .line 1851
    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v2    # "hasRelativeDrawables":Z
    .restart local v3    # "state":[I
    :cond_76
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_46

    .line 1863
    :cond_7b
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_6a
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .registers 27
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .param p3, "notifyBefore"    # Z
    .param p4, "oldlen"    # I

    .prologue
    .line 4795
    if-nez p1, :cond_4

    .line 4796
    const-string p1, ""

    .line 4800
    :cond_4
    invoke-virtual/range {p0 .. p0}, isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    .line 4801
    invoke-virtual/range {p0 .. p1}, removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4804
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, mUserSetTextScaleX:Z

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 4806
    :cond_1d
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_4f

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4f

    .line 4808
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 4809
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setHorizontalFadingEdgeEnabled(Z)V

    .line 4810
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mMarqueeFadeMode:I

    .line 4815
    :goto_48
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4818
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 4819
    .local v14, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_55
    if-ge v12, v14, :cond_7f

    .line 4820
    move-object/from16 v0, p0

    iget-object v4, v0, mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 4821
    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_70

    .line 4822
    move-object/from16 p1, v16

    .line 4819
    :cond_70
    add-int/lit8 v12, v12, 0x1

    goto :goto_55

    .line 4812
    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v16    # "out":Ljava/lang/CharSequence;
    :cond_73
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setHorizontalFadingEdgeEnabled(Z)V

    .line 4813
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, mMarqueeFadeMode:I

    goto :goto_48

    .line 4826
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_7f
    if-eqz p3, :cond_9f

    .line 4827
    move-object/from16 v0, p0

    iget-object v4, v0, mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_192

    .line 4828
    move-object/from16 v0, p0

    iget-object v4, v0, mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 4829
    move-object/from16 v0, p0

    iget-object v4, v0, mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4835
    :cond_9f
    :goto_9f
    const/4 v15, 0x0

    .line 4837
    .local v15, "needEditableForNotification":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_b1

    move-object/from16 v0, p0

    iget-object v4, v0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_b1

    .line 4838
    const/4 v15, 0x1

    .line 4841
    :cond_b1
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_bf

    invoke-virtual/range {p0 .. p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-nez v4, :cond_bf

    if-eqz v15, :cond_1a1

    .line 4843
    :cond_bf
    invoke-direct/range {p0 .. p0}, createEditorIfNeeded()V

    .line 4844
    move-object/from16 v0, p0

    iget-object v4, v0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->forgetUndoRedo()V

    .line 4845
    move-object/from16 v0, p0

    iget-object v4, v0, mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 4846
    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 4847
    move-object/from16 v0, p0

    iget-object v4, v0, mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4848
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 4849
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_eb

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4857
    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "t":Landroid/text/Editable;
    :cond_eb
    :goto_eb
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mDisplayText:Ljava/lang/CharSequence;

    .line 4858
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mUseDisplayText:Z

    .line 4861
    move-object/from16 v0, p0

    iget v4, v0, mAutoLinkMask:I

    if-eqz v4, :cond_13c

    .line 4864
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_107

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_1c5

    :cond_107
    move-object/from16 v17, p1

    .line 4865
    check-cast v17, Landroid/text/Spannable;

    .line 4870
    .local v17, "s2":Landroid/text/Spannable;
    :goto_10b
    move-object/from16 v0, p0

    iget v4, v0, mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 4871
    move-object/from16 p1, v17

    .line 4872
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1d1

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 4879
    :goto_121
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mText:Ljava/lang/CharSequence;

    .line 4883
    move-object/from16 v0, p0

    iget-boolean v4, v0, mLinksClickable:Z

    if-eqz v4, :cond_13c

    invoke-virtual/range {p0 .. p0}, textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_13c

    .line 4884
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4890
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_13c
    move-object/from16 v0, p0

    iget-object v4, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setMyanmarEncoding(Ljava/util/Locale;)V

    .line 4893
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mBufferType:Landroid/widget/TextView$BufferType;

    .line 4894
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mText:Ljava/lang/CharSequence;

    .line 4896
    move-object/from16 v0, p0

    iget-object v4, v0, mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_1d5

    .line 4897
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mTransformed:Ljava/lang/CharSequence;

    .line 4902
    :goto_15f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 4904
    .local v20, "textLength":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_294

    move-object/from16 v0, p0

    iget-boolean v4, v0, mAllowTransformationLengthChange:Z

    if-nez v4, :cond_294

    move-object/from16 v18, p1

    .line 4905
    check-cast v18, Landroid/text/Spannable;

    .line 4908
    .local v18, "sp":Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 4909
    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 4910
    .local v11, "count":I
    const/4 v12, 0x0

    :goto_186
    if-ge v12, v11, :cond_1e7

    .line 4911
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4910
    add-int/lit8 v12, v12, 0x1

    goto :goto_186

    .line 4831
    .end local v11    # "count":I
    .end local v15    # "needEditableForNotification":Z
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v20    # "textLength":I
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_192
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_9f

    .line 4850
    .restart local v15    # "needEditableForNotification":Z
    :cond_1a1
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_1ad

    move-object/from16 v0, p0

    iget-object v4, v0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_1b9

    .line 4851
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v4, v0, mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_eb

    .line 4852
    :cond_1b9
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_eb

    .line 4853
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_eb

    .line 4867
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v4, v0, mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17    # "s2":Landroid/text/Spannable;
    goto/16 :goto_10b

    .line 4872
    :cond_1d1
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_121

    .line 4899
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v4, v0, mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_15f

    .line 4914
    .restart local v11    # "count":I
    .restart local v18    # "sp":Landroid/text/Spannable;
    .restart local v20    # "textLength":I
    .restart local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v4, v0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_1f9

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 4916
    :cond_1f9
    move-object/from16 v0, p0

    iget-object v4, v0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4919
    move-object/from16 v0, p0

    iget-object v4, v0, mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_217

    move-object/from16 v0, p0

    iget-object v4, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 4921
    :cond_217
    move-object/from16 v0, p0

    iget-object v4, v0, mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_22b

    .line 4922
    move-object/from16 v0, p0

    iget-object v4, v0, mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4925
    :cond_22b
    move-object/from16 v0, p0

    iget-object v4, v0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_24b

    .line 4926
    move-object/from16 v0, p0

    iget-object v5, v0, mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 4933
    move-object/from16 v0, p0

    iget-object v4, v0, mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_24b

    move-object/from16 v0, p0

    iget-object v4, v0, mEditor:Landroid/widget/Editor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 4958
    .end local v11    # "count":I
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_24b
    :goto_24b
    move-object/from16 v0, p0

    iget-object v4, v0, mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_254

    .line 4959
    invoke-direct/range {p0 .. p0}, checkForRelayout()V

    .line 4962
    :cond_254
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 4963
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4965
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 4967
    if-eqz v15, :cond_279

    .line 4968
    check-cast p1, Landroid/text/Editable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, sendAfterTextChanged(Landroid/text/Editable;)V

    .line 4972
    :cond_279
    move-object/from16 v0, p0

    iget-object v4, v0, mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_286

    move-object/from16 v0, p0

    iget-object v4, v0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4973
    :cond_286
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_293

    .line 4974
    move-object/from16 v0, p0

    iget-object v4, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setStringName(Ljava/lang/CharSequence;)V

    .line 4976
    :cond_293
    return-void

    .line 4938
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_294
    invoke-virtual/range {p0 .. p0}, isMultiPenSelectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_24b

    .line 4939
    move-object/from16 v0, p0

    iget-object v4, v0, mTransformed:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24b

    .line 4940
    move-object/from16 v0, p0

    iget-object v4, v0, mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x1388

    if-le v4, v5, :cond_2b7

    .line 4941
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, enableMultiSelection(Z)V

    goto :goto_24b

    .line 4943
    :cond_2b7
    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, mTransformed:Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mDisplayText:Ljava/lang/CharSequence;

    .line 4944
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    check-cast v18, Landroid/text/Spannable;

    .line 4946
    .restart local v18    # "sp":Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v4, v0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_2de

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 4948
    :cond_2de
    move-object/from16 v0, p0

    iget-object v4, v0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mDisplayText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const v7, 0x640012

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4951
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mUseDisplayText:Z

    .line 4952
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mSkipUpdateDisplayText:Z

    goto/16 :goto_24b
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .registers 5
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    .prologue
    .line 1806
    const/4 v0, 0x0

    .line 1807
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_d

    .line 1808
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1809
    if-eqz v0, :cond_d

    .line 1810
    invoke-virtual {p0, v0}, setTypeface(Landroid/graphics/Typeface;)V

    .line 1829
    :goto_c
    return-void

    .line 1814
    :cond_d
    packed-switch p2, :pswitch_data_1e

    .line 1828
    :goto_10
    invoke-virtual {p0, v0, p3}, setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_c

    .line 1816
    :pswitch_14
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1817
    goto :goto_10

    .line 1820
    :pswitch_17
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1821
    goto :goto_10

    .line 1824
    :pswitch_1a
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_10

    .line 1814
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private shareSelectedText()V
    .registers 5

    .prologue
    .line 11204
    invoke-virtual {p0}, getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 11205
    .local v0, "selectedText":Ljava/lang/String;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 11206
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11207
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11208
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 11209
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11210
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11211
    invoke-virtual {p0}, stopTextActionMode()V

    .line 11213
    .end local v1    # "sharingIntent":Landroid/content/Intent;
    :cond_32
    return-void
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6988
    invoke-virtual {p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-nez v3, :cond_9

    .line 7005
    :cond_8
    :goto_8
    return v1

    .line 6992
    :cond_9
    iget-boolean v3, p0, mSingleLine:Z

    if-eqz v3, :cond_f

    move v1, v2

    .line 6993
    goto :goto_8

    .line 6996
    :cond_f
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_8

    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_8

    .line 6998
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 6999
    .local v0, "variation":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_29

    const/16 v3, 0x30

    if-ne v0, v3, :cond_8

    :cond_29
    move v1, v2

    .line 7001
    goto :goto_8
.end method

.method private shouldAdvanceFocusOnTab()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 7013
    invoke-virtual {p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-boolean v2, p0, mSingleLine:Z

    if-nez v2, :cond_26

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_26

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_26

    .line 7015
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 7016
    .local v0, "variation":I
    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_25

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_26

    .line 7018
    :cond_25
    const/4 v1, 0x0

    .line 7021
    .end local v0    # "variation":I
    :cond_26
    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10266
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "speak_password"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method private showMultiSelectPopupWindow()V
    .registers 2

    .prologue
    .line 13724
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_8

    iget-object v0, p0, mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    if-nez v0, :cond_9

    .line 13730
    :cond_8
    :goto_8
    return-void

    .line 13728
    :cond_9
    iget-object v0, p0, mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow;->changeCurrentSelectedView(Landroid/widget/TextView;)V

    .line 13729
    iget-object v0, p0, mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->showMultiSelectPopupWindow()V

    goto :goto_8
.end method

.method private startMarquee()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 8997
    invoke-virtual {p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 9019
    :cond_7
    :goto_7
    return-void

    .line 8999
    :cond_8
    invoke-virtual {p0}, getWidth()I

    move-result v1

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, compressText(F)Z

    move-result v1

    if-nez v1, :cond_7

    .line 9003
    iget-object v1, p0, mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_29

    iget-object v1, p0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_29
    invoke-virtual {p0}, isFocused()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0}, isSelected()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_35
    invoke-virtual {p0}, getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_7

    invoke-direct {p0}, canMarquee()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9006
    iget v1, p0, mMarqueeFadeMode:I

    if-ne v1, v3, :cond_59

    .line 9007
    const/4 v1, 0x2

    iput v1, p0, mMarqueeFadeMode:I

    .line 9008
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    .line 9009
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, mLayout:Landroid/text/Layout;

    .line 9010
    iput-object v0, p0, mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9011
    invoke-virtual {p0, v3}, setHorizontalFadingEdgeEnabled(Z)V

    .line 9012
    invoke-virtual {p0}, requestLayout()V

    .line 9013
    invoke-virtual {p0}, invalidate()V

    .line 9016
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_59
    iget-object v1, p0, mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_64

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, mMarquee:Landroid/widget/TextView$Marquee;

    .line 9017
    :cond_64
    iget-object v1, p0, mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_7
.end method

.method private startStopMarquee(Z)V
    .registers 4
    .param p1, "start"    # Z

    .prologue
    .line 9038
    iget-object v0, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_b

    .line 9039
    if-eqz p1, :cond_c

    .line 9040
    invoke-direct {p0}, startMarquee()V

    .line 9045
    :cond_b
    :goto_b
    return-void

    .line 9042
    :cond_c
    invoke-direct {p0}, stopMarquee()V

    goto :goto_b
.end method

.method private stopMarquee()V
    .registers 4

    .prologue
    .line 9022
    iget-object v1, p0, mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_11

    iget-object v1, p0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_11

    .line 9023
    iget-object v1, p0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    .line 9026
    :cond_11
    iget v1, p0, mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 9027
    const/4 v1, 0x1

    iput v1, p0, mMarqueeFadeMode:I

    .line 9028
    iget-object v0, p0, mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9029
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, mLayout:Landroid/text/Layout;

    iput-object v1, p0, mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9030
    iput-object v0, p0, mLayout:Landroid/text/Layout;

    .line 9031
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setHorizontalFadingEdgeEnabled(Z)V

    .line 9032
    invoke-virtual {p0}, requestLayout()V

    .line 9033
    invoke-virtual {p0}, invalidate()V

    .line 9035
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_2b
    return-void
.end method

.method private unregisterForPreDraw()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5909
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5910
    iput-boolean v1, p0, mPreDrawRegistered:Z

    .line 5911
    iput-boolean v1, p0, mPreDrawListenerDetached:Z

    .line 5912
    return-void
.end method

.method private updateTextColors()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4457
    const/4 v1, 0x0

    .line 4458
    .local v1, "inval":Z
    iget-object v2, p0, mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4459
    .local v0, "color":I
    iget v2, p0, mCurTextColor:I

    if-eq v0, v2, :cond_13

    .line 4460
    iput v0, p0, mCurTextColor:I

    .line 4461
    const/4 v1, 0x1

    .line 4463
    :cond_13
    iget-object v2, p0, mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2c

    .line 4464
    iget-object v2, p0, mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4465
    iget-object v2, p0, mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_2c

    .line 4466
    iget-object v2, p0, mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 4467
    const/4 v1, 0x1

    .line 4470
    :cond_2c
    iget-object v2, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_66

    .line 4472
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    instance-of v2, p0, Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v2, :cond_4d

    .line 4474
    iget-object v2, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    const/16 v3, 0xb3

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    .line 4478
    :cond_4d
    iget-object v2, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4479
    iget v2, p0, mCurHintTextColor:I

    if-eq v0, v2, :cond_66

    .line 4480
    iput v0, p0, mCurHintTextColor:I

    .line 4481
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_66

    .line 4482
    const/4 v1, 0x1

    .line 4486
    :cond_66
    if-eqz v1, :cond_74

    .line 4488
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_71

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 4489
    :cond_71
    invoke-virtual {p0}, invalidate()V

    .line 4491
    :cond_74
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .registers 2

    .prologue
    .line 10208
    new-instance v0, Landroid/widget/TextView$7;

    invoke-direct {v0, p0}, Landroid/widget/TextView$7;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 10214
    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .registers 6

    .prologue
    .line 10217
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 10219
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 10221
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_1d

    .line 10222
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 10226
    .local v0, "locale":Ljava/util/Locale;
    :goto_1a
    iput-object v0, p0, mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 10227
    return-void

    .line 10224
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_1a
.end method


# virtual methods
.method public addInnerShadowTextEffect(FFFIF)I
    .registers 12
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 3687
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextPaint;->addInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addLinearGradientTextEffect(FF[I[F[FF)I
    .registers 14
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "colors"    # [I
    .param p4, "alphas"    # [F
    .param p5, "positions"    # [F
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 3735
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->addLinearGradientTextEffect(FF[I[F[FF)I

    move-result v0

    return v0
.end method

.method public addOuterGlowTextEffect(FIF)I
    .registers 5
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    .line 3717
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/TextPaint;->addOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addOuterShadowTextEffect(FFFIF)I
    .registers 12
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 3670
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextPaint;->addOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addStrokeTextEffect(FIF)I
    .registers 5
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    .line 3702
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/TextPaint;->addStrokeTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 9087
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 9088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/ArrayList;

    .line 9091
    :cond_b
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9092
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4440
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, append(Ljava/lang/CharSequence;II)V

    .line 4441
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 4449
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_d

    .line 4450
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4453
    :cond_d
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 4454
    return-void
.end method

.method public applyWBTextBuffer(Z)Z
    .registers 9
    .param p1, "initBuffer"    # Z

    .prologue
    const/4 v4, 0x0

    .line 13500
    iget-object v3, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    if-eqz v3, :cond_75

    .line 13501
    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Editable;

    if-eqz v3, :cond_6b

    .line 13502
    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 13507
    :goto_1a
    iget-object v3, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 13508
    .local v2, "selectionStart":I
    iget-object v3, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 13509
    .local v1, "selectionEnd":I
    const-string v3, "TextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WB index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13510
    if-ltz v2, :cond_64

    invoke-virtual {p0}, getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 13511
    invoke-virtual {p0}, getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 13512
    .local v0, "length":I
    invoke-virtual {p0}, getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-le v2, v0, :cond_5f

    move v2, v0

    .end local v2    # "selectionStart":I
    :cond_5f
    if-le v1, v0, :cond_73

    .end local v0    # "length":I
    :goto_61
    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 13516
    :cond_64
    if-eqz p1, :cond_69

    .line 13517
    const/4 v3, 0x0

    iput-object v3, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    .line 13519
    :cond_69
    const/4 v3, 0x1

    .line 13521
    .end local v1    # "selectionEnd":I
    :goto_6a
    return v3

    .line 13504
    :cond_6b
    iget-object v3, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v3, v4}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1a

    .restart local v0    # "length":I
    .restart local v1    # "selectionEnd":I
    :cond_73
    move v0, v1

    .line 13512
    goto :goto_61

    .end local v0    # "length":I
    .end local v1    # "selectionEnd":I
    :cond_75
    move v3, v4

    .line 13521
    goto :goto_6a
.end method

.method public beginBatchEdit()V
    .registers 2

    .prologue
    .line 7485
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    .line 7486
    :cond_9
    return-void
.end method

.method public bringPointIntoView(I)Z
    .registers 32
    .param p1, "offset"    # I

    .prologue
    .line 8401
    invoke-virtual/range {p0 .. p0}, isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 8402
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mDeferScroll:I

    .line 8403
    const/4 v5, 0x0

    .line 8585
    :cond_d
    :goto_d
    return v5

    .line 8405
    :cond_e
    const/4 v5, 0x0

    .line 8407
    .local v5, "changed":Z
    invoke-direct/range {p0 .. p0}, isShowingHint()Z

    move-result v25

    if-eqz v25, :cond_1d6

    move-object/from16 v0, p0

    iget-object v0, v0, mHintLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    .line 8409
    .local v16, "layout":Landroid/text/Layout;
    :goto_1b
    if-eqz v16, :cond_d

    .line 8411
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    .line 8415
    .local v18, "line":I
    sget-object v25, Landroid/widget/TextView$8;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_2dc

    .line 8430
    const/4 v11, 0x0

    .line 8444
    .local v11, "grav":I
    :goto_39
    if-lez v11, :cond_1fb

    const/4 v6, 0x1

    .line 8446
    .local v6, "clamped":Z
    :goto_3c
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 8447
    .local v24, "x":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 8448
    .local v20, "top":I
    add-int/lit8 v25, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 8450
    .local v4, "bottom":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v17, v0

    .line 8451
    .local v17, "left":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    .line 8452
    .local v19, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 8454
    .local v15, "ht":I
    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 8455
    .local v14, "hspace":I
    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 8456
    .local v23, "vspace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHorizontallyScrolling:Z

    move/from16 v25, v0

    if-nez v25, :cond_d9

    sub-int v25, v19, v17

    move/from16 v0, v25

    if-le v0, v14, :cond_d9

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_d9

    .line 8458
    add-int v25, v17, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 8461
    :cond_d9
    sub-int v25, v4, v20

    div-int/lit8 v13, v25, 0x2

    .line 8462
    .local v13, "hslack":I
    move/from16 v22, v13

    .line 8464
    .local v22, "vslack":I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_e9

    .line 8465
    div-int/lit8 v22, v23, 0x4

    .line 8466
    :cond_e9
    div-int/lit8 v25, v14, 0x4

    move/from16 v0, v25

    if-le v13, v0, :cond_f1

    .line 8467
    div-int/lit8 v13, v14, 0x4

    .line 8469
    :cond_f1
    move-object/from16 v0, p0

    iget v12, v0, mScrollX:I

    .line 8470
    .local v12, "hs":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v21, v0

    .line 8472
    .local v21, "vs":I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_105

    .line 8473
    sub-int v21, v20, v22

    .line 8474
    :cond_105
    sub-int v25, v4, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_113

    .line 8475
    sub-int v25, v23, v22

    sub-int v21, v4, v25

    .line 8476
    :cond_113
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_11d

    .line 8477
    sub-int v21, v15, v23

    .line 8478
    :cond_11d
    rsub-int/lit8 v25, v21, 0x0

    if-lez v25, :cond_123

    .line 8479
    const/16 v21, 0x0

    .line 8481
    :cond_123
    if-eqz v11, :cond_13b

    .line 8482
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_12d

    .line 8483
    sub-int v12, v24, v13

    .line 8485
    :cond_12d
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_13b

    .line 8486
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 8490
    :cond_13b
    if-gez v11, :cond_1fe

    .line 8491
    sub-int v25, v17, v12

    if-lez v25, :cond_143

    .line 8492
    move/from16 v12, v17

    .line 8493
    :cond_143
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_14b

    .line 8494
    sub-int v12, v19, v14

    .line 8541
    :cond_14b
    :goto_14b
    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v12, v0, :cond_161

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_171

    .line 8542
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_264

    .line 8543
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, scrollTo(II)V

    .line 8564
    :goto_170
    const/4 v5, 0x1

    .line 8567
    :cond_171
    invoke-virtual/range {p0 .. p0}, isFocused()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 8575
    move-object/from16 v0, p0

    iget-object v0, v0, mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    if-nez v25, :cond_18a

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mTempRect:Landroid/graphics/Rect;

    .line 8576
    :cond_18a
    move-object/from16 v0, p0

    iget-object v0, v0, mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    add-int/lit8 v26, v24, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8577
    move-object/from16 v0, p0

    iget-object v0, v0, mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, getInterestingRect(Landroid/graphics/Rect;I)V

    .line 8578
    move-object/from16 v0, p0

    iget-object v0, v0, mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offset(II)V

    .line 8580
    move-object/from16 v0, p0

    iget-object v0, v0, mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 8581
    const/4 v5, 0x1

    goto/16 :goto_d

    .line 8407
    .end local v4    # "bottom":I
    .end local v6    # "clamped":Z
    .end local v11    # "grav":I
    .end local v12    # "hs":I
    .end local v13    # "hslack":I
    .end local v14    # "hspace":I
    .end local v15    # "ht":I
    .end local v16    # "layout":Landroid/text/Layout;
    .end local v17    # "left":I
    .end local v18    # "line":I
    .end local v19    # "right":I
    .end local v20    # "top":I
    .end local v21    # "vs":I
    .end local v22    # "vslack":I
    .end local v23    # "vspace":I
    .end local v24    # "x":I
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    goto/16 :goto_1b

    .line 8417
    .restart local v16    # "layout":Landroid/text/Layout;
    .restart local v18    # "line":I
    :pswitch_1de
    const/4 v11, 0x1

    .line 8418
    .restart local v11    # "grav":I
    goto/16 :goto_39

    .line 8420
    .end local v11    # "grav":I
    :pswitch_1e1
    const/4 v11, -0x1

    .line 8421
    .restart local v11    # "grav":I
    goto/16 :goto_39

    .line 8423
    .end local v11    # "grav":I
    :pswitch_1e4
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .line 8424
    .restart local v11    # "grav":I
    goto/16 :goto_39

    .line 8426
    .end local v11    # "grav":I
    :pswitch_1ee
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    move/from16 v0, v25

    neg-int v11, v0

    .line 8427
    .restart local v11    # "grav":I
    goto/16 :goto_39

    .line 8444
    :cond_1fb
    const/4 v6, 0x0

    goto/16 :goto_3c

    .line 8495
    .restart local v4    # "bottom":I
    .restart local v6    # "clamped":Z
    .restart local v12    # "hs":I
    .restart local v13    # "hslack":I
    .restart local v14    # "hspace":I
    .restart local v15    # "ht":I
    .restart local v17    # "left":I
    .restart local v19    # "right":I
    .restart local v20    # "top":I
    .restart local v21    # "vs":I
    .restart local v22    # "vslack":I
    .restart local v23    # "vspace":I
    .restart local v24    # "x":I
    :cond_1fe
    if-lez v11, :cond_210

    .line 8496
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_208

    .line 8497
    sub-int v12, v19, v14

    .line 8498
    :cond_208
    sub-int v25, v17, v12

    if-lez v25, :cond_14b

    .line 8499
    move/from16 v12, v17

    goto/16 :goto_14b

    .line 8501
    :cond_210
    sub-int v25, v19, v17

    move/from16 v0, v25

    if-gt v0, v14, :cond_220

    .line 8505
    sub-int v25, v19, v17

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v17, v25

    goto/16 :goto_14b

    .line 8506
    :cond_220
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_22c

    .line 8511
    sub-int v12, v19, v14

    goto/16 :goto_14b

    .line 8512
    :cond_22c
    add-int v25, v17, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_238

    .line 8517
    move/from16 v12, v17

    goto/16 :goto_14b

    .line 8518
    :cond_238
    move/from16 v0, v17

    if-le v0, v12, :cond_240

    .line 8522
    move/from16 v12, v17

    goto/16 :goto_14b

    .line 8523
    :cond_240
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_24c

    .line 8527
    sub-int v12, v19, v14

    goto/16 :goto_14b

    .line 8532
    :cond_24c
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_254

    .line 8533
    sub-int v12, v24, v13

    .line 8535
    :cond_254
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_14b

    .line 8536
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_14b

    .line 8545
    :cond_264
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, mLastScroll:J

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    .line 8546
    .local v8, "duration":J
    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v25, v0

    sub-int v7, v12, v25

    .line 8547
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 8549
    .local v10, "dy":I
    const-wide/16 v26, 0xfa

    cmp-long v25, v8, v26

    if-lez v25, :cond_2c1

    .line 8550
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 8551
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, awakenScrollBars(I)Z

    .line 8552
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 8561
    :goto_2b5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastScroll:J

    goto/16 :goto_170

    .line 8554
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_2d6

    .line 8555
    move-object/from16 v0, p0

    iget-object v0, v0, mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 8558
    :cond_2d6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, scrollBy(II)V

    goto :goto_2b5

    .line 8415
    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_1de
        :pswitch_1e1
        :pswitch_1e4
        :pswitch_1ee
    .end packed-switch
.end method

.method canClipboard()Z
    .registers 2

    .prologue
    .line 11030
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_22

    invoke-virtual {p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v0

    if-lez v0, :cond_22

    iget-boolean v0, p0, mEnableClipboard:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method canCopy()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 10997
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11005
    :cond_7
    :goto_7
    return v0

    .line 11001
    :cond_8
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, hasSelection()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_7

    .line 11002
    const/4 v0, 0x1

    goto :goto_7
.end method

.method canCut()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 10984
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10993
    :cond_7
    :goto_7
    return v0

    .line 10988
    :cond_8
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, hasSelection()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_7

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_7

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_7

    .line 10990
    const/4 v0, 0x1

    goto :goto_7
.end method

.method canDelete()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 11009
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11017
    :cond_7
    :goto_7
    return v0

    .line 11013
    :cond_8
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, hasSelection()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11014
    const/4 v0, 0x1

    goto :goto_7
.end method

.method canDictionary()Z
    .registers 2

    .prologue
    .line 11022
    invoke-virtual {p0}, canCopy()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, mEnableDictionary:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method canPaste()Z
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 11048
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_6b

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_6b

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_6b

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_6b

    .line 11053
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 11054
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 11055
    const/4 v0, 0x1

    .line 11066
    :goto_2e
    return v0

    .line 11058
    :cond_2f
    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipEx is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11059
    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipEx has text data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11066
    :cond_6b
    const/4 v0, 0x0

    goto :goto_2e

    .line 11062
    :cond_6d
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    goto :goto_2e
.end method

.method canProcessText()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 11071
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 11080
    :cond_18
    :goto_18
    return v0

    .line 11076
    :cond_19
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_18

    invoke-virtual {p0}, hasSelection()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_18

    .line 11077
    const/4 v0, 0x1

    goto :goto_18
.end method

.method canRedo()Z
    .registers 2

    .prologue
    .line 10980
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_e

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method canSelectAllText()Z
    .registers 3

    .prologue
    .line 11084
    invoke-virtual {p0}, canSelectText()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, getSelectionStart()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method canSelectText()Z
    .registers 2

    .prologue
    .line 10135
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1c

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, isCarMode()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method canShare()Z
    .registers 2

    .prologue
    .line 11035
    invoke-virtual {p0}, canCopy()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, mEnableShare:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method canUndo()Z
    .registers 2

    .prologue
    .line 10976
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_e

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method canWebSearch()Z
    .registers 2

    .prologue
    .line 11026
    invoke-virtual {p0}, canCopy()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, mEnableWebSearch:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public cancelLongPress()V
    .registers 3

    .prologue
    .line 9887
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 9888
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 9889
    :cond_c
    return-void
.end method

.method public changeClipboardDataFormat(I)V
    .registers 3
    .param p1, "newFormat"    # I

    .prologue
    .line 6848
    iget v0, p0, mClipboardDataFormat:I

    if-eq v0, p1, :cond_6

    iput p1, p0, mClipboardDataFormat:I

    .line 6849
    :cond_6
    return-void
.end method

.method public checkValidMultiSelectionForPreDraw()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 12447
    iget-boolean v3, p0, mhasMultiSelection:Z

    if-eqz v3, :cond_b

    invoke-virtual {p0}, isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_c

    .line 12466
    :cond_b
    :goto_b
    return v2

    .line 12450
    :cond_c
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 12454
    move-object v0, p0

    .line 12455
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v1

    .line 12458
    .local v1, "rootView":Landroid/view/View;
    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 12459
    .restart local v0    # "parent":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 12462
    if-ne v0, v1, :cond_23

    .line 12463
    const/4 v2, 0x1

    goto :goto_b

    .line 12464
    :cond_23
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_17

    goto :goto_b
.end method

.method public clearAllMultiSelection()Z
    .registers 4

    .prologue
    .line 12780
    invoke-virtual {p0}, removeForTouchMonitorListener()V

    .line 12781
    iget-object v0, p0, mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/penselect/PenSelectionController;->clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public clearAllTextEffect()V
    .registers 2

    .prologue
    .line 3773
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearAllTextEffect()V

    .line 3774
    return-void
.end method

.method public clearComposingText()V
    .registers 2

    .prologue
    .line 9477
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_d

    .line 9478
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 9480
    :cond_d
    return-void
.end method

.method public clearMultiSelection()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 12698
    iput-object v2, p0, mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    .line 12700
    iget-boolean v1, p0, mhasMultiSelection:Z

    if-eqz v1, :cond_20

    .line 12701
    invoke-virtual {p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 12702
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_12

    .line 12703
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/MultiSelection;->clearMultiSelection(Landroid/text/Spannable;)V

    .line 12706
    :cond_12
    invoke-direct {p0}, hideMultiSelectPopupWindow()V

    .line 12707
    invoke-virtual {p0}, removeForTouchMonitorListener()V

    .line 12708
    sput-object v2, mTargetView:Landroid/widget/TextView;

    .line 12709
    const/4 v1, 0x0

    iput-boolean v1, p0, mhasMultiSelection:Z

    .line 12711
    invoke-virtual {p0}, invalidate()V

    .line 12713
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method public clearTextEffectOpacity()V
    .registers 2

    .prologue
    .line 3764
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearTextEffectOpacity()V

    .line 3765
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 3

    .prologue
    .line 9982
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    .line 9983
    iget-boolean v0, p0, mSingleLine:Z

    if-eqz v0, :cond_18

    iget v0, p0, mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget-object v0, p0, mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 9987
    :goto_17
    return v0

    .line 9983
    :cond_18
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_17

    .line 9987
    :cond_1f
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_17
.end method

.method public computeScroll()V
    .registers 2

    .prologue
    .line 8652
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_22

    .line 8653
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8654
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, mScrollX:I

    .line 8655
    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, mScrollY:I

    .line 8656
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 8657
    invoke-virtual {p0}, postInvalidate()V

    .line 8660
    :cond_22
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 3

    .prologue
    .line 10000
    invoke-virtual {p0}, getHeight()I

    move-result v0

    invoke-virtual {p0}, getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 9992
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    .line 9993
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 9995
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_a
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 11247
    invoke-virtual {p0}, getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 11249
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11250
    invoke-virtual {p0}, getWidth()I

    move-result v0

    invoke-virtual {p0}, getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 11251
    invoke-virtual {p0}, getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11252
    return p1
.end method

.method public debug(I)V
    .registers 5
    .param p1, "depth"    # I

    .prologue
    .line 8696
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 8698
    invoke-static {p1}, debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 8699
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8703
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e8

    .line 8705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8706
    iget-object v1, p0, mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_ba

    .line 8707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8710
    :cond_ba
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_e2

    iget-object v1, p0, mStringName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e2

    .line 8711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStringName = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mStringName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8716
    :cond_e2
    :goto_e2
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8717
    return-void

    .line 8714
    :cond_e8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e2
.end method

.method protected deleteText_internal(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 11441
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 11442
    return-void
.end method

.method public didTouchFocusSelect()Z
    .registers 2

    .prologue
    .line 9882
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 2

    .prologue
    .line 9396
    const/4 v0, 0x1

    iput-boolean v0, p0, mDispatchTemporaryDetach:Z

    .line 9397
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 9398
    const/4 v0, 0x0

    iput-boolean v0, p0, mDispatchTemporaryDetach:Z

    .line 9399
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4523
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4525
    iget-object v5, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_37

    .line 4526
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v4

    .line 4527
    .local v4, "state":[I
    iget-object v5, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_11
    if-ge v2, v3, :cond_23

    aget-object v1, v0, v2

    .line 4528
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 4529
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4527
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4534
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_23
    iget-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 4535
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2e

    .line 4536
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4538
    :cond_2e
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_37

    .line 4539
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4542
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "state":[I
    :cond_37
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 7

    .prologue
    .line 4495
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4496
    iget-object v5, p0, mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_f

    iget-object v5, p0, mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-nez v5, :cond_27

    :cond_f
    iget-object v5, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1b

    iget-object v5, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-nez v5, :cond_27

    :cond_1b
    iget-object v5, p0, mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_2a

    iget-object v5, p0, mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 4499
    :cond_27
    invoke-direct {p0}, updateTextColors()V

    .line 4502
    :cond_2a
    iget-object v5, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_6e

    .line 4503
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v4

    .line 4504
    .local v4, "state":[I
    iget-object v5, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_38
    if-ge v2, v3, :cond_4a

    aget-object v1, v0, v2

    .line 4505
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 4506
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4504
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 4511
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4a
    iget-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 4512
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 4513
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4515
    :cond_5d
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 4516
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4519
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "state":[I
    :cond_6e
    return-void
.end method

.method public enableMultiSelection(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 12883
    iput-boolean p1, p0, mEnableMultiSelection:Z

    .line 12884
    if-nez p1, :cond_8

    .line 12885
    invoke-direct {p0}, removeForStylusPenEvent()V

    .line 12889
    :goto_7
    return-void

    .line 12887
    :cond_8
    invoke-direct {p0}, registerForStylusPenEvent()V

    goto :goto_7
.end method

.method public enableNewActionPopupWindow(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 13426
    iput-boolean p1, p0, mCanSelectText:Z

    .line 13427
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 11578
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 11580
    invoke-virtual {p0}, getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    .line 11581
    .local v0, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    const-string/jumbo v3, "text:ellipsize"

    if-nez v0, :cond_5e

    move-object v1, v2

    :goto_e
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11582
    const-string/jumbo v1, "text:textSize"

    invoke-virtual {p0}, getTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 11583
    const-string/jumbo v1, "text:scaledTextSize"

    invoke-virtual {p0}, getScaledTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 11584
    const-string/jumbo v1, "text:typefaceStyle"

    invoke-virtual {p0}, getTypefaceStyle()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11585
    const-string/jumbo v1, "text:selectionStart"

    invoke-virtual {p0}, getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11586
    const-string/jumbo v1, "text:selectionEnd"

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11587
    const-string/jumbo v1, "text:curTextColor"

    iget v3, p0, mCurTextColor:I

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11588
    const-string/jumbo v1, "text:text"

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    if-nez v3, :cond_63

    :goto_52
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11589
    const-string/jumbo v1, "text:gravity"

    iget v2, p0, mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11590
    return-void

    .line 11581
    :cond_5e
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 11588
    :cond_63
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_52
.end method

.method public endBatchEdit()V
    .registers 2

    .prologue
    .line 7489
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    .line 7490
    :cond_9
    return-void
.end method

.method public extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .registers 8
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x8000000

    .line 13644
    if-nez p1, :cond_7

    .line 13715
    :cond_6
    :goto_6
    return-void

    .line 13651
    :cond_7
    invoke-virtual {p0, p1}, onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 13654
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v2, :cond_12

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_b1

    .line 13656
    :cond_12
    invoke-virtual {p0}, onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13660
    invoke-virtual {p0}, getInputType()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 13661
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_d4

    .line 13662
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13663
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 13664
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 13665
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 13666
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 13672
    :goto_52
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 13673
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_63

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_63

    .line 13674
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v4

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13676
    :cond_63
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 13677
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13679
    :cond_72
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_8e

    .line 13680
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_d9

    .line 13683
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13689
    :goto_83
    invoke-direct {p0}, shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 13690
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13693
    :cond_8e
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, isMultilineInputType(I)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 13695
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 13697
    :cond_9b
    iget-object v2, p0, mHint:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 13698
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_b1

    .line 13699
    invoke-virtual {p0}, getSelectionStart()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 13700
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 13705
    .end local v1    # "v":Landroid/view/View;
    :cond_b1
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_bc

    .line 13706
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 13710
    :cond_bc
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 13711
    .local v0, "maxLength":I
    if-gez v0, :cond_6

    .line 13712
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    iget v4, p0, mWBMaxLength:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 13668
    .end local v0    # "maxLength":I
    :cond_d4
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_52

    .line 13687
    .restart local v1    # "v":Landroid/view/View;
    :cond_d9
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_83
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .registers 10
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 12530
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .line 12531
    .local v2, "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v4

    if-nez v4, :cond_30

    .line 12532
    invoke-virtual {p0}, getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    .line 12534
    .local v3, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v3, :cond_13

    instance-of v4, v3, Landroid/text/method/PasswordTransformationMethod;

    if-nez v4, :cond_2e

    .line 12536
    :cond_13
    invoke-interface {p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 12537
    .local v1, "cropRect":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, getTextForRectSelection(Landroid/graphics/Rect;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 12538
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_1f

    .line 12539
    const-string v0, ""

    .line 12541
    :cond_1f
    new-instance v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string/jumbo v5, "plain_text"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 12546
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .end local v3    # "transformationMethod":Landroid/text/method/TransformationMethod;
    :cond_2e
    :goto_2e
    const/4 v4, 0x1

    return v4

    .line 12544
    :cond_30
    invoke-super {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    goto :goto_2e
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 4
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 7370
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 7371
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 7
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 10005
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 10006
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 10008
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 10009
    .local v0, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 10010
    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 10011
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10014
    .end local v0    # "searchedLowerCase":Ljava/lang/String;
    .end local v1    # "textLowerCase":Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public forceHideSoftInput(Z)V
    .registers 2
    .param p1, "hide"    # Z

    .prologue
    .line 11977
    iput-boolean p1, p0, mHideSoftInput:Z

    .line 11978
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 10273
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .registers 2

    .prologue
    .line 11548
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .registers 2

    .prologue
    .line 11533
    invoke-virtual {p0}, getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .registers 2

    .prologue
    .line 3050
    iget v0, p0, mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .registers 4

    .prologue
    .line 6796
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-nez v0, :cond_9

    .line 6797
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 6800
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, getBaselineOffset()I

    move-result v0

    iget-object v1, p0, mLayout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_8
.end method

.method getBaselineOffset()I
    .registers 4

    .prologue
    .line 6804
    const/4 v0, 0x0

    .line 6805
    .local v0, "voffset":I
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_e

    .line 6806
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, getVerticalOffset(Z)I

    move-result v0

    .line 6809
    :cond_e
    iget-object v1, p0, mParent:Landroid/view/ViewParent;

    invoke-static {v1}, isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 6810
    invoke-virtual {p0}, getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    .line 6813
    :cond_1d
    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getBottomPaddingOffset()I
    .registers 4

    .prologue
    .line 6060
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6061
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextEffectOffsetBottom()I

    move-result v0

    .line 6065
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    iget v1, p0, mShadowDy:F

    iget v2, p0, mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_e
.end method

.method public getBreakStrategy()I
    .registers 2

    .prologue
    .line 3419
    iget v0, p0, mBreakStrategy:I

    return v0
.end method

.method protected getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v0, :cond_12

    .line 565
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 568
    :cond_12
    iget-object v0, p0, mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method public getCompoundDrawablePadding()I
    .registers 3

    .prologue
    .line 2898
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2899
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_7

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_6
    return v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 2934
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_9

    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 2968
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_9

    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2839
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2840
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_e

    .line 2841
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, [Landroid/graphics/drawable/Drawable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    .line 2843
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    goto :goto_d
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2857
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2858
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_21

    .line 2859
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2864
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    aput-object v2, v1, v3

    aput-object v2, v1, v6

    aput-object v2, v1, v4

    goto :goto_20
.end method

.method public getCompoundPaddingBottom()I
    .registers 4

    .prologue
    .line 2241
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2242
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-nez v1, :cond_e

    .line 2243
    :cond_b
    iget v1, p0, mPaddingBottom:I

    .line 2245
    :goto_d
    return v1

    :cond_e
    iget v1, p0, mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_d
.end method

.method public getCompoundPaddingEnd()I
    .registers 2

    .prologue
    .line 2295
    invoke-virtual {p0}, resolveDrawables()V

    .line 2296
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 2299
    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v0

    .line 2301
    :goto_e
    return v0

    :pswitch_f
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v0

    goto :goto_e

    .line 2296
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .prologue
    .line 2254
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2255
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_e

    .line 2256
    :cond_b
    iget v1, p0, mPaddingLeft:I

    .line 2258
    :goto_d
    return v1

    :cond_e
    iget v1, p0, mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_d
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 2267
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2268
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_e

    .line 2269
    :cond_b
    iget v1, p0, mPaddingRight:I

    .line 2271
    :goto_d
    return v1

    :cond_e
    iget v1, p0, mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_d
.end method

.method public getCompoundPaddingStart()I
    .registers 2

    .prologue
    .line 2280
    invoke-virtual {p0}, resolveDrawables()V

    .line 2281
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 2284
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v0

    .line 2286
    :goto_e
    return v0

    :pswitch_f
    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v0

    goto :goto_e

    .line 2281
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .registers 4

    .prologue
    .line 2228
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2229
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_e

    .line 2230
    :cond_b
    iget v1, p0, mPaddingTop:I

    .line 2232
    :goto_d
    return v1

    :cond_e
    iget v1, p0, mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_d
.end method

.method public final getCurrentHintTextColor()I
    .registers 2

    .prologue
    .line 3936
    iget-object v0, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    iget v0, p0, mCurHintTextColor:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, mCurTextColor:I

    goto :goto_6
.end method

.method public final getCurrentTextColor()I
    .registers 2

    .prologue
    .line 3579
    iget v0, p0, mCurTextColor:I

    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .prologue
    .line 10963
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_5
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .prologue
    .line 10926
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_5
.end method

.method protected getDefaultEditable()Z
    .registers 2

    .prologue
    .line 1942
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 1949
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 1989
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_b

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8933
    iget-object v0, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 5614
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    goto :goto_5
.end method

.method public getExtendedPaddingBottom()I
    .registers 8

    .prologue
    .line 2348
    iget v5, p0, mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 2349
    invoke-virtual {p0}, getCompoundPaddingBottom()I

    move-result v0

    .line 2375
    :cond_9
    :goto_9
    return v0

    .line 2352
    :cond_a
    iget-object v5, p0, mLayout:Landroid/text/Layout;

    if-nez v5, :cond_11

    .line 2353
    invoke-direct {p0}, assumeLayout()V

    .line 2356
    :cond_11
    iget-object v5, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, mMaximum:I

    if-gt v5, v6, :cond_20

    .line 2357
    invoke-virtual {p0}, getCompoundPaddingBottom()I

    move-result v0

    goto :goto_9

    .line 2360
    :cond_20
    invoke-virtual {p0}, getCompoundPaddingTop()I

    move-result v3

    .line 2361
    .local v3, "top":I
    invoke-virtual {p0}, getCompoundPaddingBottom()I

    move-result v0

    .line 2362
    .local v0, "bottom":I
    invoke-virtual {p0}, getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2363
    .local v4, "viewht":I
    iget-object v5, p0, mLayout:Landroid/text/Layout;

    iget v6, p0, mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2365
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_9

    .line 2369
    iget v5, p0, mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2370
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_46

    .line 2371
    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_9

    .line 2372
    :cond_46
    const/16 v5, 0x50

    if-eq v1, v5, :cond_9

    .line 2375
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_9
.end method

.method public getExtendedPaddingTop()I
    .registers 8

    .prologue
    .line 2311
    iget v5, p0, mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    .line 2312
    invoke-virtual {p0}, getCompoundPaddingTop()I

    move-result v3

    .line 2338
    :cond_9
    :goto_9
    return v3

    .line 2315
    :cond_a
    iget-object v5, p0, mLayout:Landroid/text/Layout;

    if-nez v5, :cond_11

    .line 2316
    invoke-direct {p0}, assumeLayout()V

    .line 2319
    :cond_11
    iget-object v5, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, mMaximum:I

    if-gt v5, v6, :cond_20

    .line 2320
    invoke-virtual {p0}, getCompoundPaddingTop()I

    move-result v3

    goto :goto_9

    .line 2323
    :cond_20
    invoke-virtual {p0}, getCompoundPaddingTop()I

    move-result v3

    .line 2324
    .local v3, "top":I
    invoke-virtual {p0}, getCompoundPaddingBottom()I

    move-result v0

    .line 2325
    .local v0, "bottom":I
    invoke-virtual {p0}, getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2326
    .local v4, "viewht":I
    iget-object v5, p0, mLayout:Landroid/text/Layout;

    iget v6, p0, mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2328
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_9

    .line 2332
    iget v5, p0, mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2333
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_9

    .line 2335
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4a

    .line 2336
    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_9

    .line 2338
    :cond_4a
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_9
.end method

.method protected getFadeHeight(Z)I
    .registers 3
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6838
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getFadeTop(Z)I
    .registers 5
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6821
    iget-object v1, p0, mLayout:Landroid/text/Layout;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 6830
    :goto_5
    return v1

    .line 6823
    :cond_6
    const/4 v0, 0x0

    .line 6824
    .local v0, "voffset":I
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_14

    .line 6825
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, getVerticalOffset(Z)I

    move-result v0

    .line 6828
    :cond_14
    if-eqz p1, :cond_1b

    invoke-virtual {p0}, getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 6830
    :cond_1b
    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_5
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 5727
    iget-object v0, p0, mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    .line 6702
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    if-nez v8, :cond_9

    .line 6703
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 6754
    :goto_8
    return-void

    .line 6707
    :cond_9
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v6

    .line 6708
    .local v6, "selEnd":I
    if-gez v6, :cond_13

    .line 6709
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 6713
    :cond_13
    invoke-virtual {p0}, getSelectionStart()I

    move-result v7

    .line 6714
    .local v7, "selStart":I
    if-ltz v7, :cond_1b

    if-lt v7, v6, :cond_64

    .line 6715
    :cond_1b
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6716
    .local v0, "line":I
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 6717
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 6718
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 6719
    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 6746
    .end local v0    # "line":I
    :goto_42
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v4

    .line 6747
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v5

    .line 6748
    .local v5, "paddingTop":I
    iget v8, p0, mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_57

    .line 6749
    invoke-virtual {p0, v12}, getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v5, v8

    .line 6751
    :cond_57
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 6752
    invoke-virtual {p0}, getExtendedPaddingBottom()I

    move-result v3

    .line 6753
    .local v3, "paddingBottom":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 6721
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingTop":I
    :cond_64
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 6722
    .local v2, "lineStart":I
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 6723
    .local v1, "lineEnd":I
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 6724
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 6725
    if-ne v2, v1, :cond_95

    .line 6726
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 6727
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    goto :goto_42

    .line 6731
    :cond_95
    iget-boolean v8, p0, mHighlightPathBogus:Z

    if-eqz v8, :cond_b2

    .line 6732
    iget-object v8, p0, mHighlightPath:Landroid/graphics/Path;

    if-nez v8, :cond_a4

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, mHighlightPath:Landroid/graphics/Path;

    .line 6733
    :cond_a4
    iget-object v8, p0, mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 6734
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    iget-object v9, p0, mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 6735
    iput-boolean v12, p0, mHighlightPathBogus:Z

    .line 6737
    :cond_b2
    sget-object v9, TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v9

    .line 6738
    :try_start_b5
    iget-object v8, p0, mHighlightPath:Landroid/graphics/Path;

    sget-object v10, TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6739
    sget-object v8, TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 6740
    sget-object v8, TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 6741
    monitor-exit v9

    goto/16 :goto_42

    :catchall_d2
    move-exception v8

    monitor-exit v9
    :try_end_d4
    .catchall {:try_start_b5 .. :try_end_d4} :catchall_d2

    throw v8
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3390
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .registers 2

    .prologue
    .line 4727
    iget-boolean v0, p0, mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 4028
    iget v0, p0, mGravity:I

    return v0
.end method

.method public getHideSoftInput()Z
    .registers 2

    .prologue
    .line 11990
    iget-boolean v0, p0, mHideSoftInput:Z

    return v0
.end method

.method public getHighlightColor()I
    .registers 2

    .prologue
    .line 3604
    iget v0, p0, mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 5122
    iget-object v0, p0, mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .registers 2

    .prologue
    .line 2015
    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 3926
    iget-object v0, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .registers 2

    .prologue
    .line 6360
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .registers 2

    .prologue
    .line 4083
    iget-boolean v0, p0, mHorizontallyScrolling:Z

    return v0
.end method

.method public getHoverPopupWindow()Landroid/widget/HoverPopupWindow;
    .registers 3

    .prologue
    .line 12109
    invoke-virtual {p0}, isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 12110
    const/4 v0, 0x0

    .line 12116
    :goto_7
    return-object v0

    .line 12112
    :cond_8
    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v0, :cond_15

    .line 12113
    new-instance v0, Landroid/widget/TextView$MoreInfoHPW;

    iget v1, p0, mHoverPopupType:I

    invoke-direct {v0, p0, p0, v1}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 12115
    :cond_15
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, setHoverPopupWindowSettings(I)Z

    .line 12116
    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_7
.end method

.method public getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;
    .registers 6
    .param p1, "tooltype"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 12124
    invoke-virtual {p0}, isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 12151
    :goto_8
    return-object v0

    .line 12127
    :cond_9
    iget-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v1, :cond_1b

    .line 12128
    iput p1, p0, mToolType:I

    .line 12129
    const/4 v1, 0x2

    if-ne p1, v1, :cond_34

    .line 12130
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 12144
    :cond_1b
    :goto_1b
    :pswitch_1b
    invoke-virtual {p0, p1}, setHoverPopupWindowSettings(I)Z

    .line 12145
    iput p1, p0, mHoverPopupToolTypeByApp:I

    .line 12146
    if-ne p1, v3, :cond_31

    iget v1, p0, mHoverPopupType:I

    if-ne v1, v3, :cond_31

    iget-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_31

    .line 12148
    iget-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 12149
    iput-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 12151
    :cond_31
    iget-object v0, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_8

    .line 12131
    :cond_34
    if-ne p1, v3, :cond_1b

    .line 12132
    iget v1, p0, mHoverPopupType:I

    packed-switch v1, :pswitch_data_50

    goto :goto_1b

    .line 12136
    :pswitch_3c
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_1b

    .line 12139
    :pswitch_46
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_1b

    .line 12132
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_3c
        :pswitch_46
    .end packed-switch
.end method

.method public getHyphenationFrequency()I
    .registers 2

    .prologue
    .line 3446
    iget v0, p0, mHyphenationFrequency:I

    return v0
.end method

.method public getImeActionId()I
    .registers 2

    .prologue
    .line 5439
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 5428
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 5400
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getIncludeFontPadding()Z
    .registers 2

    .prologue
    .line 7945
    iget-boolean v0, p0, mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .registers 4
    .param p1, "create"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5595
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 5605
    :cond_7
    :goto_7
    return-object v0

    .line 5596
    :cond_8
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5597
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v1, :cond_18

    .line 5598
    if-eqz p1, :cond_7

    .line 5599
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5601
    :cond_18
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_2d

    .line 5602
    if-eqz p1, :cond_7

    .line 5603
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5605
    :cond_2d
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_7
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 5376
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_5
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 11491
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .registers 5
    .param p1, "granularity"    # I

    .prologue
    .line 11505
    sparse-switch p1, :sswitch_data_40

    .line 11525
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v0

    :goto_7
    return-object v0

    .line 11507
    :sswitch_8
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 11508
    .local v1, "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11509
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    .line 11511
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    goto :goto_7

    .line 11516
    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v1    # "text":Landroid/text/Spannable;
    :sswitch_26
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 11517
    .restart local v1    # "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11518
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v0

    .line 11520
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v0, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    goto :goto_7

    .line 11505
    :sswitch_data_40
    .sparse-switch
        0x4 -> :sswitch_8
        0x10 -> :sswitch_26
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .registers 2

    .prologue
    .line 2066
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_5
.end method

.method public final getLayout()Landroid/text/Layout;
    .registers 2

    .prologue
    .line 2007
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 9908
    iget-object v6, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_42

    iget v6, p0, mMarqueeFadeMode:I

    if-eq v6, v9, :cond_42

    .line 9910
    iget-object v6, p0, mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_2d

    iget-object v6, p0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 9911
    iget-object v2, p0, mMarquee:Landroid/widget/TextView$Marquee;

    .line 9912
    .local v2, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 9913
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v3

    .line 9914
    .local v3, "scroll":F
    invoke-virtual {p0}, getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    .line 9941
    .end local v2    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v3    # "scroll":F
    :cond_2c
    :goto_2c
    :pswitch_2c
    return v5

    .line 9918
    :cond_2d
    invoke-virtual {p0}, getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_42

    .line 9919
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    .line 9920
    .local v1, "layoutDirection":I
    iget v6, p0, mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9921
    .local v0, "absoluteGravity":I
    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_9e

    .line 9941
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_42
    :pswitch_42
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    goto :goto_2c

    .line 9925
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_47
    iget-object v5, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, mRight:I

    iget v7, p0, mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_2c

    .line 9930
    :pswitch_6e
    iget-object v6, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 9931
    .local v4, "textDirection":I
    if-eq v4, v9, :cond_2c

    .line 9934
    iget-object v5, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, mRight:I

    iget v7, p0, mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_2c

    .line 9921
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_42
        :pswitch_2c
        :pswitch_42
        :pswitch_47
        :pswitch_42
        :pswitch_6e
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .registers 5

    .prologue
    .line 6037
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6038
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, mPaddingLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextEffectOffsetLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6042
    :goto_16
    return v0

    :cond_17
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, mShadowDx:F

    iget v3, p0, mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_16
.end method

.method public getLetterSpacing()F
    .registers 2

    .prologue
    .line 3357
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method getLineAtCoordinate(F)I
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 11256
    invoke-virtual {p0}, getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 11258
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11259
    invoke-virtual {p0}, getHeight()I

    move-result v0

    invoke-virtual {p0}, getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 11260
    invoke-virtual {p0}, getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11261
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .registers 4
    .param p1, "y"    # F

    .prologue
    .line 11265
    invoke-virtual {p0}, getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 11266
    invoke-virtual {p0}, getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11267
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 7
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 6774
    iget-object v3, p0, mLayout:Landroid/text/Layout;

    if-nez v3, :cond_b

    .line 6775
    if-eqz p2, :cond_a

    .line 6776
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6790
    :cond_a
    :goto_a
    return v2

    .line 6781
    :cond_b
    iget-object v2, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 6783
    .local v0, "baseline":I
    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v1

    .line 6784
    .local v1, "voffset":I
    iget v2, p0, mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_23

    .line 6785
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 6787
    :cond_23
    if-eqz p2, :cond_2c

    .line 6788
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6790
    :cond_2c
    add-int v2, v0, v1

    goto :goto_a
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 6761
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_b

    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLineHeight()I
    .registers 3

    .prologue
    .line 1999
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .registers 2

    .prologue
    .line 4431
    iget v0, p0, mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .registers 2

    .prologue
    .line 4417
    iget v0, p0, mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 3978
    iget-object v0, p0, mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .registers 2

    .prologue
    .line 3866
    iget-boolean v0, p0, mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .registers 2

    .prologue
    .line 8924
    iget v0, p0, mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .registers 3

    .prologue
    .line 4316
    iget v0, p0, mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, mMaxWidth:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getMaxHeight()I
    .registers 3

    .prologue
    .line 4199
    iget v0, p0, mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, mMaximum:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getMaxLines()I
    .registers 3

    .prologue
    .line 4170
    iget v0, p0, mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, mMaximum:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getMaxWidth()I
    .registers 3

    .prologue
    .line 4343
    iget v0, p0, mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, mMaxWidth:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getMinEms()I
    .registers 3

    .prologue
    .line 4262
    iget v0, p0, mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, mMinWidth:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getMinHeight()I
    .registers 3

    .prologue
    .line 4142
    iget v0, p0, mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, mMinimum:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getMinLines()I
    .registers 3

    .prologue
    .line 4114
    iget v0, p0, mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, mMinimum:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getMinWidth()I
    .registers 3

    .prologue
    .line 4289
    iget v0, p0, mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, mMinWidth:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .registers 2

    .prologue
    .line 2132
    iget-object v0, p0, mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getMultiSelectionText()Ljava/lang/CharSequence;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 12718
    const/4 v6, 0x0

    .line 12719
    .local v6, "selectedText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v7

    .line 12721
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_c

    iget-boolean v8, p0, mhasMultiSelection:Z

    if-nez v8, :cond_e

    :cond_c
    const/4 v8, 0x0

    .line 12747
    :goto_d
    return-object v8

    .line 12723
    :cond_e
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 12724
    .local v5, "range":[I
    invoke-virtual {p0, v5}, getVisibleTextRange([I)Z

    move-result v0

    .local v0, "flag":Z
    move-object v8, v7

    .line 12726
    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v4

    .local v4, "multiSelStart":[I
    move-object v8, v7

    .line 12727
    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v3

    .local v3, "multiSelEnd":[I
    move-object v8, v7

    .line 12728
    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v2

    .line 12730
    .local v2, "multiSelCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v2, :cond_6c

    .line 12731
    aget v8, v4, v1

    aget v9, v3, v1

    if-le v8, v9, :cond_36

    .line 12730
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 12735
    :cond_36
    if-eqz v0, :cond_4d

    .line 12736
    aget v8, v4, v1

    aget v9, v5, v11

    if-ne v8, v9, :cond_40

    aput v11, v4, v1

    .line 12737
    :cond_40
    aget v8, v3, v1

    const/4 v9, 0x1

    aget v9, v5, v9

    if-ne v8, v9, :cond_4d

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    aput v8, v3, v1

    .line 12740
    :cond_4d
    if-nez v6, :cond_5d

    .line 12741
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6    # "selectedText":Ljava/lang/CharSequence;
    aget v8, v4, v1

    aget v9, v3, v1

    invoke-interface {v7, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v6    # "selectedText":Ljava/lang/CharSequence;
    goto :goto_33

    :cond_5d
    move-object v8, v6

    .line 12743
    check-cast v8, Landroid/text/Editable;

    aget v9, v4, v1

    aget v10, v3, v1

    invoke-interface {v7, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_33

    :cond_6c
    move-object v8, v6

    .line 12747
    goto :goto_d
.end method

.method public getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;
    .registers 2

    .prologue
    .line 3481
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;

    move-result-object v0

    return-object v0
.end method

.method getOffsetAtCoordinate(IF)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    .line 11271
    invoke-virtual {p0, p2}, convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 11272
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public getOffsetForPosition(FF)I
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 11240
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v1, -0x1

    .line 11243
    :goto_7
    return v1

    .line 11241
    :cond_8
    invoke-virtual {p0, p2}, getLineAtCoordinate(F)I

    move-result v0

    .line 11242
    .local v0, "line":I
    invoke-virtual {p0, v0, p1}, getOffsetAtCoordinate(IF)I

    move-result v1

    .line 11243
    .local v1, "offset":I
    goto :goto_7
.end method

.method public getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 3829
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .registers 2

    .prologue
    .line 4036
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5561
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 9946
    iget-object v9, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_41

    iget v9, p0, mMarqueeFadeMode:I

    if-eq v9, v12, :cond_41

    .line 9948
    iget-object v9, p0, mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v9, :cond_2c

    iget-object v9, p0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v9}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v9

    if-nez v9, :cond_2c

    .line 9949
    iget-object v3, p0, mMarquee:Landroid/widget/TextView$Marquee;

    .line 9950
    .local v3, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v4

    .line 9951
    .local v4, "maxFadeScroll":F
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v5

    .line 9952
    .local v5, "scroll":F
    sub-float v8, v4, v5

    invoke-virtual {p0}, getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 9977
    .end local v3    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    :cond_2b
    :goto_2b
    :pswitch_2b
    return v8

    .line 9953
    :cond_2c
    invoke-virtual {p0}, getLineCount()I

    move-result v9

    if-ne v9, v12, :cond_41

    .line 9954
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    .line 9955
    .local v1, "layoutDirection":I
    iget v9, p0, mGravity:I

    invoke-static {v9, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9956
    .local v0, "absoluteGravity":I
    and-int/lit8 v9, v0, 0x7

    packed-switch v9, :pswitch_data_8e

    .line 9977
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_41
    :pswitch_41
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v8

    goto :goto_2b

    .line 9958
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_46
    iget v8, p0, mRight:I

    iget v9, p0, mLeft:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 9960
    .local v7, "textWidth":I
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 9961
    .local v2, "lineWidth":F
    int-to-float v8, v7

    sub-float v8, v2, v8

    invoke-virtual {p0}, getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_2b

    .line 9966
    .end local v2    # "lineWidth":F
    .end local v7    # "textWidth":I
    :pswitch_66
    iget-object v9, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 9967
    .local v6, "textDirection":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_2b

    .line 9970
    iget-object v8, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    iget v9, p0, mRight:I

    iget v10, p0, mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_2b

    .line 9956
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_66
        :pswitch_41
        :pswitch_46
        :pswitch_41
        :pswitch_2b
        :pswitch_41
        :pswitch_66
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .registers 5

    .prologue
    .line 6077
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6078
    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget-object v1, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextEffectOffsetRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 6082
    :goto_17
    return v0

    :cond_18
    invoke-direct {p0}, getFudgedPaddingRight()I

    move-result v0

    iget v1, p0, mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, mShadowDx:F

    iget v3, p0, mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_17
.end method

.method public getScaledTextSize()F
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 3207
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getSecClipboardEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13449
    iget v2, p0, mIsSecClipboardEnabled:I

    iget v3, p0, SEC_CLIPBOARD_UNKNOWN:I

    if-eq v2, v3, :cond_11

    .line 13450
    iget v2, p0, mIsSecClipboardEnabled:I

    iget v3, p0, SEC_CLIPBOARD_ENABLED:I

    if-ne v2, v3, :cond_f

    .line 13463
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 13450
    goto :goto_e

    .line 13454
    :cond_11
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 13455
    iget v2, p0, SEC_CLIPBOARD_ENABLED:I

    iput v2, p0, mIsSecClipboardEnabled:I

    .line 13463
    :goto_1f
    iget v2, p0, mIsSecClipboardEnabled:I

    iget v3, p0, SEC_CLIPBOARD_ENABLED:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto :goto_e

    .line 13457
    :cond_27
    iget v2, p0, SEC_CLIPBOARD_DISABLED:I

    iput v2, p0, mIsSecClipboardEnabled:I

    goto :goto_1f
.end method

.method getSelectedText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8746
    invoke-virtual {p0}, hasSelection()Z

    move-result v2

    if-nez v2, :cond_8

    .line 8747
    const/4 v2, 0x0

    .line 8752
    :goto_7
    return-object v2

    .line 8750
    :cond_8
    invoke-virtual {p0}, getSelectionStart()I

    move-result v1

    .line 8751
    .local v1, "start":I
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    .line 8752
    .local v0, "end":I
    if-le v1, v0, :cond_1d

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_1d
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_18
.end method

.method public getSelectionEnd()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 8732
    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 8724
    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .registers 2

    .prologue
    .line 3821
    iget v0, p0, mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .registers 2

    .prologue
    .line 3798
    iget v0, p0, mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .registers 2

    .prologue
    .line 3809
    iget v0, p0, mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .registers 2

    .prologue
    .line 3787
    iget v0, p0, mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .registers 2

    .prologue
    .line 3623
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 23
    .param p1, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 12044
    invoke-virtual/range {p0 .. p0}, getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12045
    .local v15, "text":Ljava/lang/CharSequence;
    instance-of v2, v15, Landroid/text/Spanned;

    if-eqz v2, :cond_cf

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_cf

    move-object v4, v15

    .line 12046
    check-cast v4, Landroid/text/Spanned;

    .line 12047
    .local v4, "spannedText":Landroid/text/Spanned;
    const/4 v2, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, v2, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/ReplacementSpan;

    .line 12049
    .local v13, "spans":[Landroid/text/style/ReplacementSpan;
    array-length v2, v13

    if-gtz v2, :cond_23

    const/4 v12, 0x0

    .line 12088
    .end local v4    # "spannedText":Landroid/text/Spanned;
    .end local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    :cond_22
    :goto_22
    return-object v12

    .line 12051
    .restart local v4    # "spannedText":Landroid/text/Spanned;
    .restart local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    .line 12053
    .local v14, "startPos":Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Point;->x:I

    sub-int v18, v2, v3

    .line 12054
    .local v18, "tx":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Point;->y:I

    sub-int v19, v2, v3

    .line 12056
    .local v19, "ty":I
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getLineAtCoordinate(F)I

    move-result v9

    .line 12057
    .local v9, "line":I
    invoke-virtual/range {p0 .. p0}, getMaxLines()I

    move-result v10

    .line 12058
    .local v10, "maxLine":I
    if-lez v10, :cond_4e

    if-gt v10, v9, :cond_4e

    .line 12059
    add-int/lit8 v9, v10, -0x1

    .line 12061
    :cond_4e
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, getOffsetAtCoordinate(IF)I

    move-result v11

    .line 12062
    .local v11, "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 12064
    .local v16, "textXPos":I
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_77

    .line 12065
    if-lez v11, :cond_cc

    .line 12066
    add-int/lit8 v11, v11, -0x1

    .line 12067
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 12073
    :cond_77
    const/4 v12, 0x0

    .line 12074
    .local v12, "rect":Landroid/graphics/Rect;
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, v11, v11, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    check-cast v13, [Landroid/text/style/ReplacementSpan;

    .line 12075
    .restart local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    array-length v2, v13

    if-lez v2, :cond_22

    .line 12076
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 12077
    .local v5, "start":I
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 12078
    .local v6, "end":I
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    .line 12079
    .local v17, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    .line 12081
    .local v8, "bottom":I
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v12, v2, v3, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12082
    .restart local v12    # "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget-object v2, v13, v2

    move-object/from16 v0, p0

    iget-object v3, v0, mTextPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 12083
    sub-int v2, v8, v17

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 12084
    iget v2, v14, Landroid/graphics/Point;->x:I

    add-int v2, v2, v16

    iget v3, v14, Landroid/graphics/Point;->y:I

    add-int v3, v3, v17

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_22

    .line 12069
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v8    # "bottom":I
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v17    # "top":I
    :cond_cc
    const/4 v12, 0x0

    goto/16 :goto_22

    .line 12088
    .end local v4    # "spannedText":Landroid/text/Spanned;
    .end local v9    # "line":I
    .end local v10    # "maxLine":I
    .end local v11    # "offset":I
    .end local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v14    # "startPos":Landroid/graphics/Point;
    .end local v16    # "textXPos":I
    .end local v18    # "tx":I
    .end local v19    # "ty":I
    :cond_cf
    const/4 v12, 0x0

    goto/16 :goto_22
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 10201
    const/4 v0, 0x1

    invoke-direct {p0, v0}, getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getStringName()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1972
    iget-object v0, p0, mStringName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1964
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 3569
    iget-object v0, p0, mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11343
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 11345
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 11368
    :goto_9
    return-object v1

    .line 11349
    :cond_a
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1c

    .line 11352
    .local v0, "defaultIsRtl":Z
    :goto_10
    invoke-virtual {p0}, getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 11355
    if-eqz v0, :cond_1e

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_9

    .line 11349
    .end local v0    # "defaultIsRtl":Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_10

    .line 11355
    .restart local v0    # "defaultIsRtl":Z
    :cond_1e
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_9

    .line 11358
    :pswitch_21
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_9

    .line 11360
    :pswitch_24
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_9

    .line 11362
    :pswitch_27
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_9

    .line 11364
    :pswitch_2a
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_9

    .line 11366
    :pswitch_2d
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_9

    .line 11368
    :pswitch_30
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_9

    .line 11352
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method getTextDirectionHeuristic(Z)Landroid/text/TextDirectionHeuristic;
    .registers 4
    .param p1, "isHint"    # Z

    .prologue
    const/4 v0, 0x1

    .line 11376
    if-nez p1, :cond_8

    invoke-virtual {p0}, getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    .line 11398
    :goto_7
    return-object v1

    .line 11379
    :cond_8
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1a

    .line 11382
    .local v0, "defaultIsRtl":Z
    :goto_e
    invoke-virtual {p0}, getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 11385
    if-eqz v0, :cond_1c

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_7

    .line 11379
    .end local v0    # "defaultIsRtl":Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e

    .line 11385
    .restart local v0    # "defaultIsRtl":Z
    :cond_1c
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_7

    .line 11388
    :pswitch_1f
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_7

    .line 11390
    :pswitch_22
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_7

    .line 11392
    :pswitch_25
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_7

    .line 11394
    :pswitch_28
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_7

    .line 11396
    :pswitch_2b
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_7

    .line 11398
    :pswitch_2e
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_7

    .line 11382
    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 10601
    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 10602
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 10603
    invoke-virtual {p0}, getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 10605
    :cond_e
    return-object v0
.end method

.method public getTextForMultiSelection()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 12608
    iget-boolean v0, p0, mUseDisplayText:Z

    if-eqz v0, :cond_7

    .line 12609
    iget-object v0, p0, mDisplayText:Ljava/lang/CharSequence;

    .line 12616
    :goto_6
    return-object v0

    .line 12610
    :cond_7
    iget-object v0, p0, mTransformed:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_10

    .line 12611
    iget-object v0, p0, mTransformed:Ljava/lang/CharSequence;

    goto :goto_6

    .line 12612
    :cond_10
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_17

    .line 12613
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    goto :goto_6

    .line 12616
    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getTextLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 3147
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .registers 2

    .prologue
    .line 3275
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 10178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 3198
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .registers 4

    .prologue
    .line 6049
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6050
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextEffectOffsetTop()I

    move-result v0

    neg-int v0, v0

    .line 6054
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    iget v1, p0, mShadowDy:F

    iget v2, p0, mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_f
.end method

.method public getTotalPaddingBottom()I
    .registers 3

    .prologue
    .line 2426
    invoke-virtual {p0}, getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .registers 2

    .prologue
    .line 2408
    invoke-virtual {p0}, getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .registers 2

    .prologue
    .line 2384
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .registers 2

    .prologue
    .line 2392
    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .registers 2

    .prologue
    .line 2400
    invoke-virtual {p0}, getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .registers 3

    .prologue
    .line 2417
    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .prologue
    .line 2183
    iget-object v0, p0, mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10807
    iget-object v0, p0, mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 3333
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypefaceStyle()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 3218
    iget-object v1, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 3219
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .registers 3

    .prologue
    .line 2028
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3877
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1a

    .line 3878
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 3880
    :goto_19
    return-object v0

    :cond_1a
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_19
.end method

.method getVerticalOffset(Z)I
    .registers 8
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5741
    const/4 v4, 0x0

    .line 5742
    .local v4, "voffset":I
    iget v5, p0, mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5744
    .local v1, "gravity":I
    iget-object v2, p0, mLayout:Landroid/text/Layout;

    .line 5745
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_17

    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_17

    .line 5746
    iget-object v2, p0, mHintLayout:Landroid/text/Layout;

    .line 5749
    :cond_17
    const/16 v5, 0x30

    if-eq v1, v5, :cond_2b

    .line 5750
    invoke-direct {p0, v2}, getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5751
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5753
    .local v3, "textht":I
    if-ge v3, v0, :cond_2b

    .line 5754
    const/16 v5, 0x50

    if-ne v1, v5, :cond_2c

    .line 5755
    sub-int v4, v0, v3

    .line 5760
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_2b
    :goto_2b
    return v4

    .line 5757
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2c
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_2b
.end method

.method public getVisibleTextRange([I)Z
    .registers 13
    .param p1, "range"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 12622
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 12623
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    array-length v9, p1

    const/4 v10, 0x2

    if-ge v9, v10, :cond_f

    .line 12688
    :cond_e
    :goto_e
    return v7

    .line 12627
    :cond_f
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 12628
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 12632
    iget-object v9, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_40

    .line 12633
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    .line 12634
    .local v4, "start":I
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 12636
    .local v0, "count":I
    if-lez v0, :cond_37

    .line 12637
    add-int v9, v4, v0

    add-int/lit8 v9, v9, -0x1

    aput v9, p1, v7

    .line 12638
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    .end local v0    # "count":I
    .end local v4    # "start":I
    :cond_35
    :goto_35
    move v7, v8

    .line 12688
    goto :goto_e

    .line 12640
    .restart local v0    # "count":I
    .restart local v4    # "start":I
    :cond_37
    aput v7, p1, v7

    .line 12641
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    goto :goto_35

    .line 12643
    .end local v0    # "count":I
    .end local v4    # "start":I
    :cond_40
    iget-object v9, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_4f

    .line 12644
    aput v7, p1, v7

    .line 12645
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    goto :goto_35

    .line 12646
    :cond_4f
    iget-object v9, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_7f

    .line 12647
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    .line 12648
    .restart local v4    # "start":I
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 12650
    .restart local v0    # "count":I
    aput v7, p1, v7

    .line 12651
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    aput v9, p1, v8

    .line 12653
    if-nez v4, :cond_76

    .line 12654
    if-lez v0, :cond_35

    .line 12655
    add-int v9, v4, v0

    add-int/lit8 v9, v9, -0x1

    aput v9, p1, v7

    .line 12656
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    goto :goto_35

    .line 12659
    :cond_76
    if-lez v0, :cond_35

    .line 12660
    aput v7, p1, v7

    .line 12661
    add-int/lit8 v7, v4, 0x1

    aput v7, p1, v8

    goto :goto_35

    .line 12665
    .end local v0    # "count":I
    .end local v4    # "start":I
    :cond_7f
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 12666
    .local v3, "line":I
    if-ltz v3, :cond_e

    .line 12668
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    .line 12669
    .restart local v4    # "start":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 12671
    .restart local v0    # "count":I
    if-lez v0, :cond_b5

    .line 12672
    aput v7, p1, v7

    .line 12673
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    aput v7, p1, v8

    .line 12676
    invoke-virtual {p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v1

    .line 12677
    .local v1, "disText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_35

    .line 12678
    aget v7, p1, v8

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 12679
    .local v5, "startChar":C
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 12680
    aget v7, p1, v8

    add-int/lit8 v7, v7, 0x1

    aput v7, p1, v8

    goto :goto_35

    .line 12684
    .end local v1    # "disText":Ljava/lang/CharSequence;
    .end local v5    # "startChar":C
    :cond_b5
    aput v7, p1, v7

    .line 12685
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_35
.end method

.method public getWBTextBuffer(Z)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "refresh"    # Z

    .prologue
    .line 13474
    if-nez p1, :cond_6

    iget-object v0, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    if-nez v0, :cond_16

    .line 13475
    :cond_6
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_19

    .line 13476
    iget-object v0, p0, mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    .line 13483
    :cond_16
    :goto_16
    iget-object v0, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    return-object v0

    .line 13477
    :cond_19
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2a

    .line 13478
    iget-object v0, p0, mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_16

    .line 13480
    :cond_2a
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_16
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .registers 2

    .prologue
    .line 10240
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_b

    .line 10241
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    .line 10243
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6885
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_c

    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 6905
    :cond_d
    :goto_d
    return v1

    .line 6889
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_24

    .line 6890
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 6891
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_d

    .line 6892
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_d

    .line 6895
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_43

    .line 6896
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 6897
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_33

    .line 6898
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 6900
    :cond_33
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_43

    .line 6901
    invoke-virtual {p0}, stopTextActionMode()V

    goto :goto_d

    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_43
    move v1, v2

    .line 6905
    goto :goto_d
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 9223
    const-wide/16 v2, 0x0

    sput-wide v2, sLastCutCopyOrTextChangedTime:J

    .line 9225
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_32

    const/4 v0, 0x0

    .line 9226
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_9
    if-eqz v0, :cond_f

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_12

    .line 9227
    :cond_f
    invoke-virtual {p0}, updateAfterEdit()V

    .line 9229
    :cond_12
    if-eqz v0, :cond_28

    .line 9230
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 9231
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_37

    .line 9232
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9233
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 9238
    :goto_21
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 9240
    :cond_28
    invoke-virtual {p0}, resetErrorChangedFlag()V

    .line 9241
    invoke-virtual {p0, p1, p2, p3, p4}, sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 9242
    invoke-virtual {p0, p1, p2, p3, p4}, onTextChanged(Ljava/lang/CharSequence;III)V

    .line 9243
    return-void

    .line 9225
    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_32
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto :goto_9

    .line 9235
    .restart local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_37
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9236
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_21
.end method

.method public hasMultiSelection()Z
    .registers 2

    .prologue
    .line 12693
    iget-boolean v0, p0, mhasMultiSelection:Z

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 6174
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_22

    :cond_10
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_22

    invoke-virtual {p0}, hasSelection()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method hasPasswordTransformationMethod()Z
    .registers 2

    .prologue
    .line 5255
    iget-object v0, p0, mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method public hasSelection()Z
    .registers 4

    .prologue
    .line 8739
    invoke-virtual {p0}, getSelectionStart()I

    move-result v1

    .line 8740
    .local v1, "selectionStart":I
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    .line 8742
    .local v0, "selectionEnd":I
    if-ltz v1, :cond_e

    if-eq v1, v0, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public hideCursorControllers()V
    .registers 2

    .prologue
    .line 12008
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_e

    .line 12009
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 12010
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 12012
    :cond_e
    return-void
.end method

.method public hideErrorIfUnchanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7181
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_14

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_14

    .line 7182
    invoke-virtual {p0, v1, v1}, setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 7184
    :cond_14
    return-void
.end method

.method invalidateCursor()V
    .registers 2

    .prologue
    .line 5830
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    .line 5832
    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, invalidateCursor(III)V

    .line 5833
    return-void
.end method

.method invalidateCursorPath()V
    .registers 13

    .prologue
    .line 5787
    iget-boolean v5, p0, mHighlightPathBogus:Z

    if-eqz v5, :cond_8

    .line 5788
    invoke-virtual {p0}, invalidateCursor()V

    .line 5827
    :cond_7
    :goto_7
    return-void

    .line 5790
    :cond_8
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v1

    .line 5791
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 5793
    .local v4, "verticalPadding":I
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-nez v5, :cond_7b

    .line 5794
    sget-object v6, TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v6

    .line 5804
    :try_start_20
    iget-object v5, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 5805
    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_34

    .line 5806
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5809
    :cond_34
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 5812
    iget-object v5, p0, mHighlightPath:Landroid/graphics/Path;

    sget-object v7, TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5814
    int-to-float v5, v1

    sget-object v7, TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    int-to-float v7, v4

    sget-object v8, TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    int-to-float v8, v1

    sget-object v9, TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {p0, v5, v7, v8, v9}, invalidate(IIII)V

    .line 5818
    monitor-exit v6

    goto :goto_7

    .end local v3    # "thick":F
    :catchall_78
    move-exception v5

    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_20 .. :try_end_7a} :catchall_78

    throw v5

    .line 5820
    :cond_7b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7c
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v2, v5, :cond_7

    .line 5821
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5822
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, invalidate(IIII)V

    .line 5820
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 18
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 6113
    const/4 v7, 0x0

    .line 6115
    .local v7, "handled":Z
    invoke-virtual/range {p0 .. p1}, verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_57

    .line 6116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 6117
    .local v5, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, mScrollX:I

    .line 6118
    .local v9, "scrollX":I
    move-object/from16 v0, p0

    iget v10, v0, mScrollY:I

    .line 6123
    .local v10, "scrollY":I
    move-object/from16 v0, p0

    iget-object v6, v0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 6124
    .local v6, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v6, :cond_44

    .line 6125
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_5d

    .line 6126
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingTop()I

    move-result v4

    .line 6127
    .local v4, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingBottom()I

    move-result v1

    .line 6128
    .local v1, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .line 6130
    .local v11, "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, mPaddingLeft:I

    add-int/2addr v9, v12

    .line 6131
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    .line 6132
    const/4 v7, 0x1

    .line 6160
    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_44
    :goto_44
    if-eqz v7, :cond_57

    .line 6161
    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, invalidate(IIII)V

    .line 6166
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_57
    if-nez v7, :cond_5c

    .line 6167
    invoke-super/range {p0 .. p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6169
    :cond_5c
    return-void

    .line 6133
    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_5d
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_96

    .line 6134
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingTop()I

    move-result v4

    .line 6135
    .restart local v4    # "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingBottom()I

    move-result v1

    .line 6136
    .restart local v1    # "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .line 6138
    .restart local v11    # "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, mRight:I

    move-object/from16 v0, p0

    iget v13, v0, mLeft:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, mPaddingRight:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 6139
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    .line 6140
    const/4 v7, 0x1

    .line 6141
    goto :goto_44

    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_96
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_c2

    .line 6142
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v2

    .line 6143
    .local v2, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v3

    .line 6144
    .local v3, "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, mRight:I

    move-object/from16 v0, p0

    iget v13, v0, mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .line 6146
    .local v8, "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    .line 6147
    move-object/from16 v0, p0

    iget v12, v0, mPaddingTop:I

    add-int/2addr v10, v12

    .line 6148
    const/4 v7, 0x1

    .line 6149
    goto :goto_44

    .end local v2    # "compoundPaddingLeft":I
    .end local v3    # "compoundPaddingRight":I
    .end local v8    # "hspace":I
    :cond_c2
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_44

    .line 6150
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v2

    .line 6151
    .restart local v2    # "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v3

    .line 6152
    .restart local v3    # "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, mRight:I

    move-object/from16 v0, p0

    iget v13, v0, mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .line 6154
    .restart local v8    # "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    .line 6155
    move-object/from16 v0, p0

    iget v12, v0, mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, mTop:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, mPaddingBottom:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 6156
    const/4 v7, 0x1

    goto/16 :goto_44
.end method

.method invalidateRegion(IIZ)V
    .registers 20
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "invalidateCursor"    # Z

    .prologue
    .line 5847
    move-object/from16 v0, p0

    iget-object v12, v0, mLayout:Landroid/text/Layout;

    if-nez v12, :cond_a

    .line 5848
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 5899
    :goto_9
    return-void

    .line 5850
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 5851
    .local v8, "lineStart":I
    move-object/from16 v0, p0

    iget-object v12, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 5859
    .local v10, "top":I
    if-lez v8, :cond_29

    .line 5860
    move-object/from16 v0, p0

    iget-object v12, v0, mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    .line 5865
    :cond_29
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_64

    .line 5866
    move v7, v8

    .line 5870
    .local v7, "lineEnd":I
    :goto_30
    move-object/from16 v0, p0

    iget-object v12, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 5873
    .local v2, "bottom":I
    if-eqz p3, :cond_6f

    move-object/from16 v0, p0

    iget-object v12, v0, mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_6f

    .line 5874
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_41
    move-object/from16 v0, p0

    iget-object v12, v0, mEditor:Landroid/widget/Editor;

    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    if-ge v5, v12, :cond_6f

    .line 5875
    move-object/from16 v0, p0

    iget-object v12, v0, mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 5876
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5877
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5874
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 5868
    .end local v2    # "bottom":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "lineEnd":I
    :cond_64
    move-object/from16 v0, p0

    iget-object v12, v0, mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7    # "lineEnd":I
    goto :goto_30

    .line 5881
    .restart local v2    # "bottom":I
    :cond_6f
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v4

    .line 5882
    .local v4, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .line 5885
    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_b5

    if-nez p3, :cond_b5

    .line 5886
    move-object/from16 v0, p0

    iget-object v12, v0, mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .line 5887
    .local v6, "left":I
    move-object/from16 v0, p0

    iget-object v12, v0, mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 5888
    .local v9, "right":I
    add-int/2addr v6, v4

    .line 5889
    add-int/2addr v9, v4

    .line 5896
    :goto_a0
    move-object/from16 v0, p0

    iget v12, v0, mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, invalidate(IIII)V

    goto/16 :goto_9

    .line 5892
    .end local v6    # "left":I
    .end local v9    # "right":I
    :cond_b5
    move v6, v4

    .line 5893
    .restart local v6    # "left":I
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .restart local v9    # "right":I
    goto :goto_a0
.end method

.method public isAccessibilitySelectionExtendable()Z
    .registers 2

    .prologue
    .line 11540
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorControllersShowing()Z
    .registers 2

    .prologue
    .line 12018
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorVisible()Z
    .registers 2

    .prologue
    .line 8985
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    goto :goto_5
.end method

.method public isEllipsis()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12028
    iget v3, p0, mRight:I

    iget v4, p0, mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .line 12030
    .local v0, "width":I
    invoke-virtual {p0}, getVisibility()I

    move-result v3

    if-nez v3, :cond_3e

    if-lez v0, :cond_3e

    invoke-virtual {p0}, getLineCount()I

    move-result v3

    if-ne v3, v1, :cond_3e

    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_3d

    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_3e

    :cond_3d
    :goto_3d
    return v1

    :cond_3e
    move v1, v2

    goto :goto_3d
.end method

.method public isEnableMultiSelection()Z
    .registers 2

    .prologue
    .line 12898
    iget-boolean v0, p0, mEnableMultiSelection:Z

    return v0
.end method

.method public isEnableNewActionPopupWindow()Z
    .registers 2

    .prologue
    .line 13436
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_7

    .line 13437
    iget-boolean v0, p0, mCanSelectText:Z

    .line 13439
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isInBatchEditMode()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 11321
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_6

    .line 11326
    :cond_5
    :goto_5
    return v1

    .line 11322
    :cond_6
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 11323
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_12

    .line 11324
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    .line 11326
    :cond_12
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    goto :goto_5
.end method

.method public isInExtractedMode()Z
    .registers 2

    .prologue
    .line 10187
    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodTarget()Z
    .registers 3

    .prologue
    .line 10624
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 10625
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isMultiSelectionLinkArea(II)Z
    .registers 15
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v11, 0x0

    .line 12752
    iget-boolean v10, p0, mhasMultiSelection:Z

    if-eqz v10, :cond_f

    iget-object v10, p0, mLayout:Landroid/text/Layout;

    if-eqz v10, :cond_f

    invoke-direct {p0, p1, p2, v11}, checkPosInView(III)Z

    move-result v10

    if-nez v10, :cond_11

    :cond_f
    move v10, v11

    .line 12773
    :goto_10
    return v10

    .line 12755
    :cond_11
    invoke-virtual {p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v9

    .line 12756
    .local v9, "text":Ljava/lang/CharSequence;
    if-nez v9, :cond_19

    move v10, v11

    goto :goto_10

    .line 12758
    :cond_19
    invoke-direct {p0, p0}, getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    .line 12759
    .local v8, "startPos":Landroid/graphics/Point;
    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int v6, p1, v10

    .line 12760
    .local v6, "posX":I
    iget v10, v8, Landroid/graphics/Point;->y:I

    sub-int v7, p2, v10

    .line 12761
    .local v7, "posY":I
    int-to-float v10, v7

    invoke-virtual {p0, v10}, getLineAtCoordinate(F)I

    move-result v1

    .line 12762
    .local v1, "line":I
    int-to-float v10, v6

    invoke-virtual {p0, v1, v10}, getOffsetAtCoordinate(IF)I

    move-result v5

    .local v5, "offset":I
    move-object v10, v9

    .line 12764
    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v4

    .local v4, "multiSelStart":[I
    move-object v10, v9

    .line 12765
    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v3

    .line 12766
    .local v3, "multiSelEnd":[I
    check-cast v9, Landroid/text/Spannable;

    .end local v9    # "text":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v2

    .line 12768
    .local v2, "multiSelCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    if-ge v0, v2, :cond_53

    .line 12769
    aget v10, v4, v0

    if-gt v10, v5, :cond_50

    aget v10, v3, v0

    if-gt v5, v10, :cond_50

    .line 12770
    const/4 v10, 0x1

    goto :goto_10

    .line 12768
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_53
    move v10, v11

    .line 12773
    goto :goto_10
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 6027
    iget v0, p0, mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_19

    iget-object v0, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method isSingleLine()Z
    .registers 2

    .prologue
    .line 5126
    iget-boolean v0, p0, mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10875
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_7

    .line 10882
    :cond_6
    :goto_6
    return v1

    .line 10876
    :cond_7
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_6

    .line 10879
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-gtz v3, :cond_6

    .line 10881
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 10882
    .local v0, "variation":I
    if-eqz v0, :cond_30

    const/16 v3, 0x30

    if-eq v0, v3, :cond_30

    const/16 v3, 0x50

    if-eq v0, v3, :cond_30

    const/16 v3, 0x40

    if-eq v0, v3, :cond_30

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_6

    :cond_30
    move v1, v2

    goto :goto_6
.end method

.method isTextEditable()Z
    .registers 2

    .prologue
    .line 9872
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isTextSelectable()Z
    .registers 2

    .prologue
    .line 6192
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    goto :goto_5
.end method

.method public isValidMultiSelection()Z
    .registers 24

    .prologue
    .line 12471
    move-object/from16 v0, p0

    iget-boolean v0, v0, mhasMultiSelection:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    invoke-virtual/range {p0 .. p0}, isVisibleToUser()Z

    move-result v20

    if-nez v20, :cond_11

    .line 12472
    :cond_e
    const/16 v20, 0x0

    .line 12523
    :goto_10
    return v20

    .line 12474
    :cond_11
    invoke-virtual/range {p0 .. p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12475
    .local v15, "text":Ljava/lang/CharSequence;
    if-nez v15, :cond_1a

    const/16 v20, 0x0

    goto :goto_10

    .line 12477
    :cond_1a
    invoke-virtual/range {p0 .. p0}, getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 12478
    .local v6, "layout":Landroid/text/Layout;
    if-nez v6, :cond_23

    const/16 v20, 0x0

    goto :goto_10

    .line 12480
    :cond_23
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 12481
    .local v18, "tvRect":Landroid/graphics/Rect;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 12483
    invoke-virtual/range {p0 .. p0}, getRootView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .line 12484
    .local v13, "startPos":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v20, v15

    .line 12487
    check-cast v20, Landroid/text/Spannable;

    invoke-static/range {v20 .. v20}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    .line 12488
    .local v11, "selStart":I
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v10

    .line 12490
    .local v10, "selEnd":I
    if-lt v11, v10, :cond_65

    .line 12491
    move/from16 v16, v11

    .line 12492
    .local v16, "tmp":I
    move v11, v10

    .line 12493
    move/from16 v10, v16

    .line 12496
    .end local v16    # "tmp":I
    :cond_65
    invoke-virtual {v6, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 12497
    .local v9, "sLine":I
    invoke-virtual {v6, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 12499
    .local v4, "eLine":I
    invoke-virtual/range {p0 .. p0}, getTotalPaddingTop()I

    move-result v17

    .line 12500
    .local v17, "topPadding":I
    invoke-virtual/range {p0 .. p0}, getTotalPaddingLeft()I

    move-result v7

    .line 12502
    .local v7, "leftPadding":I
    invoke-virtual {v6, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {p0 .. p0}, getScrollX()I

    move-result v21

    sub-int v14, v20, v21

    .line 12503
    .local v14, "sx":I
    invoke-virtual {v6, v10}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {p0 .. p0}, getScrollX()I

    move-result v21

    sub-int v5, v20, v21

    .line 12505
    .local v5, "ex":I
    if-le v14, v5, :cond_9e

    .line 12506
    move/from16 v16, v14

    .line 12507
    .restart local v16    # "tmp":I
    move v14, v5

    .line 12508
    move/from16 v5, v16

    .line 12511
    .end local v16    # "tmp":I
    :cond_9e
    invoke-virtual {v6, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    add-int v20, v20, v17

    invoke-virtual/range {p0 .. p0}, getScrollY()I

    move-result v21

    sub-int v8, v20, v21

    .line 12512
    .local v8, "lineTop":I
    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v20

    add-int v20, v20, v17

    invoke-virtual/range {p0 .. p0}, getScrollY()I

    move-result v21

    sub-int v3, v20, v21

    .line 12514
    .local v3, "baseLine":I
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .line 12515
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v14, v8, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12516
    .local v12, "srcRect":Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 12517
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v20

    if-nez v20, :cond_de

    const/16 v20, 0x0

    goto/16 :goto_10

    .line 12519
    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, getRootView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lcom/samsung/android/penselect/PenSelectionController;->findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v19

    .line 12520
    .local v19, "view":Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_100

    .line 12521
    const/16 v20, 0x0

    goto/16 :goto_10

    .line 12523
    :cond_100
    const/16 v20, 0x1

    goto/16 :goto_10
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 6

    .prologue
    .line 6101
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6102
    iget-object v4, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v4, :cond_19

    .line 6103
    iget-object v4, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_d
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 6104
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_16

    .line 6105
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6103
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 6109
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_19
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1979
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .registers 40
    .param p1, "wantWidth"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    .prologue
    .line 7620
    invoke-direct/range {p0 .. p0}, stopMarquee()V

    .line 7623
    move-object/from16 v0, p0

    iget v2, v0, mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, mOldMaximum:I

    .line 7624
    move-object/from16 v0, p0

    iget v2, v0, mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, mOldMaxMode:I

    .line 7626
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mHighlightPathBogus:Z

    .line 7628
    if-gez p1, :cond_1c

    .line 7629
    const/16 p1, 0x0

    .line 7631
    :cond_1c
    if-gez p2, :cond_20

    .line 7632
    const/16 p2, 0x0

    .line 7635
    :cond_20
    invoke-direct/range {p0 .. p0}, getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 7636
    .local v6, "alignment":Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-boolean v2, v0, mSingleLine:Z

    if-eqz v2, :cond_210

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_210

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v6, v2, :cond_38

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_210

    :cond_38
    const/16 v32, 0x1

    .line 7639
    .local v32, "testDirChange":Z
    :goto_3a
    const/16 v30, 0x0

    .line 7640
    .local v30, "oldDir":I
    if-eqz v32, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v30

    .line 7641
    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_214

    invoke-virtual/range {p0 .. p0}, getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_214

    const/4 v7, 0x1

    .line 7642
    .local v7, "shouldEllipsize":Z
    :goto_54
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_217

    move-object/from16 v0, p0

    iget v2, v0, mMarqueeFadeMode:I

    if-eqz v2, :cond_217

    const/16 v31, 0x1

    .line 7644
    .local v31, "switchEllipsize":Z
    :goto_64
    move-object/from16 v0, p0

    iget-object v8, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 7645
    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_79

    move-object/from16 v0, p0

    iget v2, v0, mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_79

    .line 7647
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 7650
    :cond_79
    move-object/from16 v0, p0

    iget-object v2, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_87

    .line 7651
    invoke-virtual/range {p0 .. p0}, getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7654
    :cond_87
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getTextDirectionHeuristic(Z)Landroid/text/TextDirectionHeuristic;

    move-result-object v29

    .line 7656
    .local v29, "hintTextDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_21b

    const/4 v9, 0x1

    :goto_95
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mLayout:Landroid/text/Layout;

    .line 7658
    if-eqz v31, :cond_c7

    .line 7659
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_21e

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 7661
    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_ad
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_222

    const/16 v16, 0x1

    :goto_b5
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7665
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_c7
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_226

    const/4 v7, 0x1

    .line 7666
    :goto_ce
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mHintLayout:Landroid/text/Layout;

    .line 7668
    move-object/from16 v0, p0

    iget-object v2, v0, mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1c6

    .line 7669
    if-eqz v7, :cond_dd

    move/from16 p2, p1

    .line 7671
    :cond_dd
    sget-object v2, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_fd

    .line 7672
    move-object/from16 v0, p0

    iget-object v2, v0, mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 7674
    if-eqz p4, :cond_fd

    .line 7675
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 7679
    :cond_fd
    if-eqz p4, :cond_153

    .line 7680
    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_257

    if-eqz v7, :cond_111

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_257

    .line 7682
    :cond_111
    move-object/from16 v0, p0

    iget-object v2, v0, mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_229

    .line 7683
    move-object/from16 v0, p0

    iget-object v0, v0, mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mHintLayout:Landroid/text/Layout;

    .line 7693
    :goto_149
    move-object/from16 v0, p0

    iget-object v2, v0, mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, mSavedHintLayout:Landroid/text/BoringLayout;

    .line 7710
    :cond_153
    :goto_153
    move-object/from16 v0, p0

    iget-object v2, v0, mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_1c6

    .line 7711
    move-object/from16 v0, p0

    iget-object v2, v0, mHint:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mHint:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p2

    invoke-static {v2, v3, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mSpacingAdd:F

    move-object/from16 v0, p0

    iget v4, v0, mSpacingMult:F

    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, mIncludePad:Z

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mBreakStrategy:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mHyphenationFrequency:I

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v27

    .line 7719
    .local v27, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz v7, :cond_1be

    .line 7720
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d9

    move-object/from16 v0, p0

    iget v2, v0, mMaximum:I

    :goto_1bb
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 7724
    :cond_1be
    invoke-virtual/range {v27 .. v27}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mHintLayout:Landroid/text/Layout;

    .line 7728
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_1c6
    if-nez p6, :cond_1d7

    if-eqz v32, :cond_1da

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v0, v30

    if-eq v0, v2, :cond_1da

    .line 7729
    :cond_1d7
    invoke-direct/range {p0 .. p0}, registerForPreDraw()V

    .line 7732
    :cond_1da
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_202

    .line 7733
    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, compressText(F)Z

    move-result v2

    if-nez v2, :cond_202

    .line 7734
    move-object/from16 v0, p0

    iget-object v2, v0, mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    .line 7737
    .local v28, "height":I
    const/4 v2, -0x2

    move/from16 v0, v28

    if-eq v0, v2, :cond_2de

    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_2de

    .line 7738
    invoke-direct/range {p0 .. p0}, startMarquee()V

    .line 7747
    .end local v28    # "height":I
    :cond_202
    :goto_202
    move-object/from16 v0, p0

    iget-object v2, v0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_20f

    move-object/from16 v0, p0

    iget-object v2, v0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 7748
    :cond_20f
    return-void

    .line 7636
    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v29    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    .end local v30    # "oldDir":I
    .end local v31    # "switchEllipsize":Z
    .end local v32    # "testDirChange":Z
    :cond_210
    const/16 v32, 0x0

    goto/16 :goto_3a

    .line 7641
    .restart local v30    # "oldDir":I
    .restart local v32    # "testDirChange":Z
    :cond_214
    const/4 v7, 0x0

    goto/16 :goto_54

    .line 7642
    .restart local v7    # "shouldEllipsize":Z
    :cond_217
    const/16 v31, 0x0

    goto/16 :goto_64

    .line 7656
    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v29    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    .restart local v31    # "switchEllipsize":Z
    :cond_21b
    const/4 v9, 0x0

    goto/16 :goto_95

    .line 7659
    :cond_21e
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_ad

    .line 7661
    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_222
    const/16 v16, 0x0

    goto/16 :goto_b5

    .line 7665
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_226
    const/4 v7, 0x0

    goto/16 :goto_ce

    .line 7688
    :cond_229
    move-object/from16 v0, p0

    iget-object v0, v0, mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mHintLayout:Landroid/text/Layout;

    goto/16 :goto_149

    .line 7694
    :cond_257
    if-eqz v7, :cond_153

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_153

    .line 7695
    move-object/from16 v0, p0

    iget-object v2, v0, mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_2a3

    .line 7696
    move-object/from16 v0, p0

    iget-object v0, v0, mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mHintLayout:Landroid/text/Layout;

    goto/16 :goto_153

    .line 7702
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v0, v0, mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mHintLayout:Landroid/text/Layout;

    goto/16 :goto_153

    .line 7720
    .restart local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_2d9
    const v2, 0x7fffffff

    goto/16 :goto_1bb

    .line 7741
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v28    # "height":I
    :cond_2de
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mRestartMarquee:Z

    goto/16 :goto_202
.end method

.method public moveCursorToVisibleOffset()Z
    .registers 21

    .prologue
    .line 8597
    move-object/from16 v0, p0

    iget-object v0, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_11

    .line 8598
    const/16 v17, 0x0

    .line 8647
    :goto_10
    return v17

    .line 8600
    :cond_11
    invoke-virtual/range {p0 .. p0}, getSelectionStart()I

    move-result v12

    .line 8601
    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, getSelectionEnd()I

    move-result v3

    .line 8602
    .local v3, "end":I
    if-eq v12, v3, :cond_1e

    .line 8603
    const/16 v17, 0x0

    goto :goto_10

    .line 8608
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 8610
    .local v8, "line":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 8611
    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 8612
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .line 8613
    .local v16, "vspace":I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .line 8614
    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_68

    .line 8615
    div-int/lit8 v15, v16, 0x4

    .line 8616
    :cond_68
    move-object/from16 v0, p0

    iget v14, v0, mScrollY:I

    .line 8618
    .local v14, "vs":I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_e3

    .line 8619
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 8626
    :cond_82
    :goto_82
    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .line 8627
    .local v6, "hspace":I
    move-object/from16 v0, p0

    iget v5, v0, mScrollX:I

    .line 8628
    .local v5, "hs":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 8629
    .local v7, "leftChar":I
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .line 8632
    .local v11, "rightChar":I
    if-ge v7, v11, :cond_fe

    move v9, v7

    .line 8633
    .local v9, "lowChar":I
    :goto_c9
    if-le v7, v11, :cond_100

    move v4, v7

    .line 8635
    .local v4, "highChar":I
    :goto_cc
    move v10, v12

    .line 8636
    .local v10, "newStart":I
    if-ge v10, v9, :cond_102

    .line 8637
    move v10, v9

    .line 8642
    :cond_d0
    :goto_d0
    if-eq v10, v12, :cond_106

    .line 8643
    move-object/from16 v0, p0

    iget-object v0, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8644
    const/16 v17, 0x1

    goto/16 :goto_10

    .line 8620
    .end local v4    # "highChar":I
    .end local v5    # "hs":I
    .end local v6    # "hspace":I
    .end local v7    # "leftChar":I
    .end local v9    # "lowChar":I
    .end local v10    # "newStart":I
    .end local v11    # "rightChar":I
    :cond_e3
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_82

    .line 8621
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_82

    .restart local v5    # "hs":I
    .restart local v6    # "hspace":I
    .restart local v7    # "leftChar":I
    .restart local v11    # "rightChar":I
    :cond_fe
    move v9, v11

    .line 8632
    goto :goto_c9

    .restart local v9    # "lowChar":I
    :cond_100
    move v4, v11

    .line 8633
    goto :goto_cc

    .line 8638
    .restart local v4    # "highChar":I
    .restart local v10    # "newStart":I
    :cond_102
    if-le v10, v4, :cond_d0

    .line 8639
    move v10, v4

    goto :goto_d0

    .line 8647
    :cond_106
    const/16 v17, 0x0

    goto/16 :goto_10
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1780
    const/16 v1, 0x64

    if-ne p1, v1, :cond_27

    .line 1781
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3f

    if-eqz p3, :cond_3f

    .line 1782
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1783
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1a

    .line 1784
    invoke-virtual {p0}, isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1785
    invoke-virtual {p0, v0}, replaceSelectionWithText(Ljava/lang/CharSequence;)V

    .line 1799
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_1a
    :goto_1a
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1800
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 1803
    :cond_27
    return-void

    .line 1787
    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 1788
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1a

    .line 1793
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_3f
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1a

    .line 1795
    invoke-virtual {p0}, stopTextActionMode()V

    .line 1796
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1a
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5969
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 5971
    iput-boolean v1, p0, mTemporaryDetach:Z

    .line 5974
    invoke-virtual {p0}, isMultiPenSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5975
    iput-boolean v2, p0, mAttachedWindow:Z

    .line 5976
    invoke-direct {p0}, registerForStylusPenEvent()V

    .line 5986
    :cond_12
    :goto_12
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 5988
    :cond_1b
    iget-boolean v0, p0, mPreDrawListenerDetached:Z

    if-eqz v0, :cond_28

    .line 5989
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5990
    iput-boolean v1, p0, mPreDrawListenerDetached:Z

    .line 5992
    :cond_28
    return-void

    .line 5978
    :cond_29
    invoke-virtual {p0}, isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, sSpenUspLevel:I

    if-lez v0, :cond_12

    .line 5979
    iput-boolean v2, p0, mAttachedWindow:Z

    .line 5980
    invoke-virtual {p0}, textCanBeSelected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5981
    invoke-direct {p0}, registerForStylusPenEvent()V

    goto :goto_12
.end method

.method public onBeginBatchEdit()V
    .registers 1

    .prologue
    .line 7498
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 7310
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 7470
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 7481
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 7482
    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3166
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3167
    iget-boolean v4, p0, mLocaleChanged:Z

    if-nez v4, :cond_12

    .line 3168
    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 3170
    :cond_12
    instance-of v4, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v4, :cond_1f

    .line 3171
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1f

    .line 3173
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->onScrollChanged()V

    .line 3178
    :cond_1f
    iget-boolean v4, p0, mhasMultiSelection:Z

    if-eqz v4, :cond_26

    .line 3179
    invoke-virtual {p0}, clearAllMultiSelection()Z

    .line 3183
    :cond_26
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3184
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v2, :cond_45

    move v1, v2

    .line 3186
    .local v1, "isMobileKeyboard":Z
    :goto_35
    if-eqz v1, :cond_44

    .line 3187
    invoke-virtual {p0, v3}, getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 3188
    invoke-virtual {p0, v3}, getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    .line 3191
    :cond_44
    return-void

    .end local v1    # "isMobileKeyboard":Z
    :cond_45
    move v1, v3

    .line 3184
    goto :goto_35
.end method

.method protected onCreateDrawableState(I)[I
    .registers 9
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    .line 6255
    iget-boolean v4, p0, mSingleLine:Z

    if-eqz v4, :cond_2b

    .line 6256
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 6262
    .local v0, "drawableState":[I
    :goto_9
    invoke-virtual {p0}, isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6267
    array-length v2, v0

    .line 6268
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_3a

    .line 6269
    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_37

    .line 6270
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .line 6271
    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 6272
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 6278
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nonPressedState":[I
    :goto_2a
    return-object v3

    .line 6258
    .end local v0    # "drawableState":[I
    :cond_2b
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 6259
    .restart local v0    # "drawableState":[I
    sget-object v4, MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, mergeDrawableStates([I[I)[I

    goto :goto_9

    .line 6268
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3a
    move-object v3, v0

    .line 6278
    goto :goto_2a
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x8000000

    .line 7315
    invoke-virtual {p0}, onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 7316
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    .line 7317
    invoke-virtual {p0}, getInputType()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7318
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_b4

    .line 7319
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7320
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 7321
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 7322
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 7323
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 7327
    :goto_49
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 7328
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7330
    :cond_56
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 7331
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7333
    :cond_65
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_81

    .line 7335
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_b8

    .line 7338
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7344
    :goto_76
    invoke-direct {p0}, shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_81

    .line 7345
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7348
    :cond_81
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 7350
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7352
    :cond_8e
    iget-object v1, p0, mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 7353
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_bf

    .line 7354
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 7355
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 7356
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 7357
    invoke-virtual {p0}, getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 7361
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_b3
    return-object v0

    .line 7325
    :cond_b4
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_49

    .line 7342
    :cond_b8
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_76

    .line 7361
    :cond_bf
    const/4 v0, 0x0

    goto :goto_b3
.end method

.method protected onDetachedFromWindowInternal()V
    .registers 2

    .prologue
    .line 5997
    iget-boolean v0, p0, mPreDrawRegistered:Z

    if-eqz v0, :cond_e

    .line 5998
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5999
    const/4 v0, 0x1

    iput-boolean v0, p0, mPreDrawListenerDetached:Z

    .line 6003
    :cond_e
    invoke-virtual {p0}, isMultiPenSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6004
    invoke-direct {p0}, removeForStylusPenEvent()V

    .line 6005
    invoke-virtual {p0}, clearMultiSelection()Z

    .line 6007
    :cond_1a
    invoke-virtual {p0}, isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    sget v0, sSpenUspLevel:I

    if-lez v0, :cond_27

    .line 6008
    invoke-direct {p0}, removeForStylusPenEvent()V

    .line 6012
    :cond_27
    invoke-virtual {p0}, resetResolvedDrawables()V

    .line 6014
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_33

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 6016
    :cond_33
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 6017
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    .line 11277
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    .line 11302
    :goto_8
    :pswitch_8
    return v2

    .line 11279
    :pswitch_9
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_18

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    :goto_16
    move v2, v1

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    goto :goto_16

    .line 11282
    :pswitch_1a
    invoke-virtual {p0}, requestFocus()Z

    goto :goto_8

    .line 11286
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, getOffsetForPosition(FF)I

    move-result v0

    .line 11287
    .local v0, "offset":I
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_8

    .line 11291
    .end local v0    # "offset":I
    :pswitch_32
    iput-boolean v2, p0, mOnDragResult:Z

    .line 11293
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_43

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_43

    .line 11294
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    .line 11297
    :cond_43
    iget-boolean v2, p0, mOnDragResult:Z

    goto :goto_8

    .line 11277
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1e
        :pswitch_32
        :pswitch_8
        :pswitch_1a
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6365
    invoke-direct/range {p0 .. p0}, restartMarqueeIfNeeded()V

    .line 6368
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6370
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v16

    .line 6371
    .local v16, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingTop()I

    move-result v18

    .line 6372
    .local v18, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v17

    .line 6373
    .local v17, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingBottom()I

    move-result v15

    .line 6374
    .local v15, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollX:I

    move/from16 v33, v0

    .line 6375
    .local v33, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v34, v0

    .line 6376
    .local v34, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, mRight:I

    move/from16 v31, v0

    .line 6377
    .local v31, "right":I
    move-object/from16 v0, p0

    iget v0, v0, mLeft:I

    move/from16 v26, v0

    .line 6378
    .local v26, "left":I
    move-object/from16 v0, p0

    iget v9, v0, mBottom:I

    .line 6379
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, mTop:I

    move/from16 v35, v0

    .line 6380
    .local v35, "top":I
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v24

    .line 6381
    .local v24, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, getHorizontalOffsetForDrawables()I

    move-result v29

    .line 6382
    .local v29, "offset":I
    if-eqz v24, :cond_342

    const/16 v27, 0x0

    .line 6383
    .local v27, "leftOffset":I
    :goto_44
    if-eqz v24, :cond_346

    move/from16 v32, v29

    .line 6385
    .local v32, "rightOffset":I
    :goto_48
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v19, v0

    .line 6386
    .local v19, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v19, :cond_147

    .line 6392
    sub-int v2, v9, v35

    sub-int/2addr v2, v15

    sub-int v38, v2, v18

    .line 6393
    .local v38, "vspace":I
    sub-int v2, v31, v26

    sub-int v2, v2, v17

    sub-int v23, v2, v16

    .line 6397
    .local v23, "hspace":I
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_93

    .line 6398
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6399
    move-object/from16 v0, p0

    iget v2, v0, mPaddingLeft:I

    add-int v2, v2, v33

    add-int v2, v2, v27

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move/from16 v40, v0

    sub-int v40, v38, v40

    div-int/lit8 v40, v40, 0x2

    add-int v3, v3, v40

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6402
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6403
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6408
    :cond_93
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_d3

    .line 6409
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6410
    add-int v2, v33, v31

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget v3, v0, mPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v32

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move/from16 v40, v0

    sub-int v40, v38, v40

    div-int/lit8 v40, v40, 0x2

    add-int v3, v3, v40

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6413
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6414
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6419
    :cond_d3
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_106

    .line 6420
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6421
    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, mPaddingTop:I

    add-int v3, v3, v34

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6423
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6424
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6429
    :cond_106
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_147

    .line 6430
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6431
    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int v3, v34, v9

    sub-int v3, v3, v35

    move-object/from16 v0, p0

    iget v0, v0, mPaddingBottom:I

    move/from16 v40, v0

    sub-int v3, v3, v40

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move/from16 v40, v0

    sub-int v3, v3, v40

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6434
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6435
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6439
    .end local v23    # "hspace":I
    .end local v38    # "vspace":I
    :cond_147
    move-object/from16 v0, p0

    iget v14, v0, mCurTextColor:I

    .line 6441
    .local v14, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    if-nez v2, :cond_154

    .line 6442
    invoke-direct/range {p0 .. p0}, assumeLayout()V

    .line 6445
    :cond_154
    move-object/from16 v0, p0

    iget-object v4, v0, mLayout:Landroid/text/Layout;

    .line 6447
    .local v4, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v2, v0, mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_176

    move-object/from16 v0, p0

    iget-object v2, v0, mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_176

    .line 6448
    move-object/from16 v0, p0

    iget-object v2, v0, mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_172

    .line 6449
    move-object/from16 v0, p0

    iget v14, v0, mCurHintTextColor:I

    .line 6452
    :cond_172
    move-object/from16 v0, p0

    iget-object v4, v0, mHintLayout:Landroid/text/Layout;

    .line 6455
    :cond_176
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 6456
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 6458
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6463
    invoke-virtual/range {p0 .. p0}, getExtendedPaddingTop()I

    move-result v22

    .line 6464
    .local v22, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, getExtendedPaddingBottom()I

    move-result v21

    .line 6466
    .local v21, "extendedPaddingBottom":I
    move-object/from16 v0, p0

    iget v2, v0, mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    sub-int v38, v2, v18

    .line 6467
    .restart local v38    # "vspace":I
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int v28, v2, v38

    .line 6469
    .local v28, "maxScrollY":I
    add-int v2, v16, v33

    int-to-float v11, v2

    .line 6470
    .local v11, "clipLeft":F
    if-nez v34, :cond_34a

    const/4 v13, 0x0

    .line 6471
    .local v13, "clipTop":F
    :goto_1ae
    sub-int v2, v31, v26

    invoke-direct/range {p0 .. p0}, getFudgedPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, v33

    int-to-float v12, v2

    .line 6472
    .local v12, "clipRight":F
    sub-int v2, v9, v35

    add-int v2, v2, v34

    move/from16 v0, v34

    move/from16 v1, v28

    if-ne v0, v1, :cond_1c4

    const/16 v21, 0x0

    .end local v21    # "extendedPaddingBottom":I
    :cond_1c4
    sub-int v2, v2, v21

    int-to-float v10, v2

    .line 6476
    .local v10, "clipBottom":F
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v2

    if-eqz v2, :cond_34f

    .line 6477
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v11, v2

    .line 6478
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    .line 6480
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v13, v2

    .line 6481
    move-object/from16 v0, p0

    iget-object v2, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    .line 6491
    :cond_1f9
    :goto_1f9
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 6493
    const/16 v37, 0x0

    .line 6494
    .local v37, "voffsetText":I
    const/16 v36, 0x0

    .line 6498
    .local v36, "voffsetCursor":I
    move-object/from16 v0, p0

    iget v2, v0, mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_21a

    .line 6499
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getVerticalOffset(Z)I

    move-result v37

    .line 6500
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getVerticalOffset(Z)I

    move-result v36

    .line 6502
    :cond_21a
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v3, v22, v37

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6504
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v25

    .line 6505
    .local v25, "layoutDirection":I
    move-object/from16 v0, p0

    iget v2, v0, mGravity:I

    move/from16 v0, v25

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 6506
    .local v8, "absoluteGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_2b3

    move-object/from16 v0, p0

    iget v2, v0, mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b3

    .line 6508
    move-object/from16 v0, p0

    iget-boolean v2, v0, mSingleLine:Z

    if-nez v2, :cond_28a

    invoke-virtual/range {p0 .. p0}, getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28a

    invoke-direct/range {p0 .. p0}, canMarquee()Z

    move-result v2

    if-eqz v2, :cond_28a

    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_28a

    .line 6510
    move-object/from16 v0, p0

    iget v2, v0, mRight:I

    move-object/from16 v0, p0

    iget v3, v0, mLeft:I

    sub-int v39, v2, v3

    .line 6511
    .local v39, "width":I
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v3

    add-int v30, v2, v3

    .line 6512
    .local v30, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-int v3, v39, v30

    int-to-float v3, v3

    sub-float v20, v2, v3

    .line 6513
    .local v20, "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6516
    .end local v20    # "dx":F
    .end local v30    # "padding":I
    .end local v39    # "width":I
    :cond_28a
    move-object/from16 v0, p0

    iget-object v2, v0, mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_2b3

    move-object/from16 v0, p0

    iget-object v2, v0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2b3

    .line 6517
    move-object/from16 v0, p0

    iget-object v2, v0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    .line 6518
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6522
    .end local v20    # "dx":F
    :cond_2b3
    sub-int v7, v36, v37

    .line 6524
    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v5

    .line 6527
    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v6, v0, mHighlightPaint:Landroid/graphics/Paint;

    .line 6528
    .local v6, "highlightPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v2, v0, mhasMultiSelection:Z

    if-eqz v2, :cond_2c7

    .line 6529
    move-object/from16 v0, p0

    iget-object v6, v0, mMultiHighlightPaint:Landroid/graphics/Paint;

    .line 6533
    :cond_2c7
    move-object/from16 v0, p0

    iget-object v2, v0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3a2

    .line 6534
    move-object/from16 v0, p0

    iget-object v2, v0, mEditor:Landroid/widget/Editor;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 6539
    :goto_2d6
    move-object/from16 v0, p0

    iget-object v2, v0, mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_301

    move-object/from16 v0, p0

    iget-object v2, v0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_301

    .line 6540
    move-object/from16 v0, p0

    iget-object v2, v0, mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v20

    .line 6541
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6542
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 6546
    .end local v20    # "dx":F
    :cond_301
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_337

    invoke-static {}, Landroid/util/GateConfig;->isGateLcdtextEnabled()Z

    move-result v2

    if-eqz v2, :cond_337

    .line 6547
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "<GATE-M>LCDSTR:"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, mText:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v40, "/LCDSTR</GATE-M>"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6549
    :cond_337
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, drawTextStrikethrough(Landroid/graphics/Canvas;I)V

    .line 6552
    return-void

    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "highlight":Landroid/graphics/Path;
    .end local v6    # "highlightPaint":Landroid/graphics/Paint;
    .end local v7    # "cursorOffsetVertical":I
    .end local v8    # "absoluteGravity":I
    .end local v10    # "clipBottom":F
    .end local v11    # "clipLeft":F
    .end local v12    # "clipRight":F
    .end local v13    # "clipTop":F
    .end local v14    # "color":I
    .end local v19    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "extendedPaddingTop":I
    .end local v25    # "layoutDirection":I
    .end local v27    # "leftOffset":I
    .end local v28    # "maxScrollY":I
    .end local v32    # "rightOffset":I
    .end local v36    # "voffsetCursor":I
    .end local v37    # "voffsetText":I
    .end local v38    # "vspace":I
    :cond_342
    move/from16 v27, v29

    .line 6382
    goto/16 :goto_44

    .line 6383
    .restart local v27    # "leftOffset":I
    :cond_346
    const/16 v32, 0x0

    goto/16 :goto_48

    .line 6470
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v11    # "clipLeft":F
    .restart local v14    # "color":I
    .restart local v19    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v21    # "extendedPaddingBottom":I
    .restart local v22    # "extendedPaddingTop":I
    .restart local v28    # "maxScrollY":I
    .restart local v32    # "rightOffset":I
    .restart local v38    # "vspace":I
    :cond_34a
    add-int v2, v22, v34

    int-to-float v13, v2

    goto/16 :goto_1ae

    .line 6482
    .end local v21    # "extendedPaddingBottom":I
    .restart local v10    # "clipBottom":F
    .restart local v12    # "clipRight":F
    .restart local v13    # "clipTop":F
    :cond_34f
    move-object/from16 v0, p0

    iget v2, v0, mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1f9

    .line 6483
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, mShadowDx:F

    move-object/from16 v0, p0

    iget v0, v0, mShadowRadius:F

    move/from16 v40, v0

    sub-float v3, v3, v40

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v11, v2

    .line 6484
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, mShadowDx:F

    move-object/from16 v0, p0

    iget v0, v0, mShadowRadius:F

    move/from16 v40, v0

    add-float v3, v3, v40

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    .line 6486
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, mShadowDy:F

    move-object/from16 v0, p0

    iget v0, v0, mShadowRadius:F

    move/from16 v40, v0

    sub-float v3, v3, v40

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v13, v2

    .line 6487
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, mShadowDy:F

    move-object/from16 v0, p0

    iget v0, v0, mShadowRadius:F

    move/from16 v40, v0

    add-float v3, v3, v40

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v10, v2

    goto/16 :goto_1f9

    .line 6536
    .restart local v5    # "highlight":Landroid/graphics/Path;
    .restart local v6    # "highlightPaint":Landroid/graphics/Paint;
    .restart local v7    # "cursorOffsetVertical":I
    .restart local v8    # "absoluteGravity":I
    .restart local v25    # "layoutDirection":I
    .restart local v36    # "voffsetCursor":I
    .restart local v37    # "voffsetText":I
    :cond_3a2
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto/16 :goto_2d6
.end method

.method public onEditorAction(I)V
    .registers 24
    .param p1, "actionCode"    # I

    .prologue
    .line 5478
    move-object/from16 v0, p0

    iget-object v3, v0, mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_1b

    const/4 v2, 0x0

    .line 5479
    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    :goto_7
    if-eqz v2, :cond_80

    .line 5480
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_22

    .line 5481
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 5537
    :cond_1a
    :goto_1a
    return-void

    .line 5478
    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    goto :goto_7

    .line 5492
    .restart local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_22
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_41

    .line 5493
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 5494
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_1a

    .line 5495
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 5496
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5502
    .end local v20    # "v":Landroid/view/View;
    :cond_41
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_60

    .line 5503
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 5504
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_1a

    .line 5505
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 5506
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5512
    .end local v20    # "v":Landroid/view/View;
    :cond_60
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_80

    .line 5513
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 5514
    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_1a

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5515
    invoke-virtual/range {p0 .. p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1a

    .line 5521
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_80
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .line 5522
    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_1a

    .line 5523
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5524
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 5530
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1a
.end method

.method public onEndBatchEdit()V
    .registers 1

    .prologue
    .line 7506
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9415
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 9418
    iget-boolean v0, p0, mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    iput-boolean v1, p0, mTemporaryDetach:Z

    .line 9419
    :cond_a
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_12

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 9420
    :cond_12
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 9424
    iget-boolean v0, p0, mTemporaryDetach:Z

    if-eqz v0, :cond_8

    .line 9426
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 9446
    :goto_7
    return-void

    .line 9430
    :cond_8
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 9432
    :cond_11
    if-eqz p1, :cond_20

    .line 9433
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_20

    .line 9434
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    .line 9435
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 9439
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_20
    invoke-direct {p0, p1}, startStopMarquee(Z)V

    .line 9441
    iget-object v0, p0, mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_32

    .line 9442
    iget-object v0, p0, mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 9445
    :cond_32
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_7
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9853
    iget-object v0, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1d

    .line 9855
    :try_start_e
    iget-object v1, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_17
    .catch Ljava/lang/AbstractMethodError; {:try_start_e .. :try_end_17} :catch_1c

    move-result v0

    if-eqz v0, :cond_1d

    .line 9856
    const/4 v0, 0x1

    .line 9864
    :goto_1b
    return v0

    .line 9858
    :catch_1c
    move-exception v0

    .line 9864
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 44
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9512
    invoke-virtual/range {p0 .. p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v30

    .line 9513
    .local v30, "text":Ljava/lang/CharSequence;
    sput-object p0, mLastHoveredView:Landroid/widget/TextView;

    .line 9514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    sput-wide v38, mLastHoveredTime:J

    .line 9515
    if-eqz v30, :cond_479

    sget v38, sSpenUspLevel:I

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_479

    .line 9517
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v38

    and-int/lit8 v38, v38, 0x20

    if-eqz v38, :cond_99

    const/16 v17, 0x1

    .line 9518
    .local v17, "isBtnPressed":Z
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 9519
    .local v4, "action":I
    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, isLinkPreviewEnabled(I)Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, mEnableLinkPreview:Z

    .line 9521
    const/16 v38, 0x9

    move/from16 v0, v38

    if-ne v4, v0, :cond_4e

    .line 9522
    invoke-direct/range {p0 .. p0}, canTextMultiSelection()Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, mCanTextMultiSelection:Z

    .line 9525
    :cond_4e
    const/16 v38, 0xa

    move/from16 v0, v38

    if-ne v4, v0, :cond_ae

    .line 9526
    move-object/from16 v0, p0

    iget-object v0, v0, mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_6a

    .line 9528
    :try_start_5c
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 9529
    .local v14, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_6a} :catch_9c

    .line 9534
    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :cond_6a
    :goto_6a
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, mHoveredSpan:Ljava/lang/Object;

    .line 9535
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverEnterTime:J

    .line 9536
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverExitTime:J

    .line 9538
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v38

    if-eqz v38, :cond_94

    .line 9539
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    .line 9541
    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_91
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_94} :catch_a5

    .line 9546
    :cond_94
    :goto_94
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    .line 9753
    .end local v4    # "action":I
    .end local v17    # "isBtnPressed":Z
    :goto_98
    return v38

    .line 9517
    :cond_99
    const/16 v17, 0x0

    goto :goto_22

    .line 9530
    .restart local v4    # "action":I
    .restart local v17    # "isBtnPressed":Z
    :catch_9c
    move-exception v16

    .line 9531
    .local v16, "ie":Ljava/lang/IllegalStateException;
    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHoverExit **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 9542
    .end local v16    # "ie":Ljava/lang/IllegalStateException;
    :catch_a5
    move-exception v7

    .line 9543
    .local v7, "e":Landroid/os/RemoteException;
    const-string v38, "TextView"

    const-string v39, "Failed to change Pen Point to HOVERING_SPENICON_HOVERPOPUP_DEFAULT"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 9549
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_ae
    move-object/from16 v0, p0

    iget-boolean v0, v0, mEnableLinkPreview:Z

    move/from16 v38, v0

    if-nez v38, :cond_bd

    if-nez v17, :cond_bd

    .line 9550
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto :goto_98

    .line 9553
    :cond_bd
    const/16 v38, 0x7

    move/from16 v0, v38

    if-ne v4, v0, :cond_479

    .line 9554
    invoke-virtual/range {p0 .. p0}, getLayout()Landroid/text/Layout;

    move-result-object v18

    .line 9555
    .local v18, "layout":Landroid/text/Layout;
    if-nez v18, :cond_ce

    .line 9556
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto :goto_98

    .line 9559
    :cond_ce
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v22, v0

    .line 9560
    .local v22, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v23, v0

    .line 9562
    .local v23, "rawY":I
    if-eqz v17, :cond_15c

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCanTextMultiSelection:Z

    move/from16 v38, v0

    if-eqz v38, :cond_15c

    move-object/from16 v0, p0

    iget v0, v0, TOUCH_DELTA:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, checkPosOnText(III)Z

    move-result v38

    if-eqz v38, :cond_15c

    .line 9563
    invoke-static {}, Landroid/text/MultiSelection;->getHoveredIcon()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_14d

    .line 9564
    new-instance v38, Landroid/widget/TextView$5;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$5;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, post(Ljava/lang/Runnable;)Z

    .line 9576
    :try_start_11f
    move-object/from16 v0, p0

    iget-object v0, v0, mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_135

    .line 9577
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 9578
    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V

    .line 9580
    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :cond_135
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, mHoveredSpan:Ljava/lang/Object;

    .line 9581
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverEnterTime:J

    .line 9582
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverExitTime:J
    :try_end_14d
    .catch Ljava/lang/IllegalStateException; {:try_start_11f .. :try_end_14d} :catch_153

    .line 9588
    :cond_14d
    :goto_14d
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_98

    .line 9583
    :catch_153
    move-exception v16

    .line 9584
    .restart local v16    # "ie":Ljava/lang/IllegalStateException;
    const-string v38, "TextView"

    const-string v39, "** hovering dismiss **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    .line 9591
    .end local v16    # "ie":Ljava/lang/IllegalStateException;
    :cond_15c
    invoke-static {}, Landroid/text/MultiSelection;->getHoveredIcon()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_174

    .line 9592
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    .line 9594
    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_171
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_174
    .catch Landroid/os/RemoteException; {:try_start_171 .. :try_end_174} :catch_229

    :cond_174
    :goto_174
    move-object/from16 v38, v30

    .line 9600
    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->length()I

    move-result v40

    const-class v41, Landroid/text/style/URLSpan;

    invoke-interface/range {v38 .. v41}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [Landroid/text/style/URLSpan;

    .line 9601
    .local v34, "urlSpans":[Landroid/text/style/URLSpan;
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v38, v0

    if-eqz v38, :cond_3f5

    .line 9602
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v36, v0

    .line 9603
    .local v36, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v37, v0

    .line 9605
    .local v37, "y":I
    invoke-virtual/range {p0 .. p0}, getTotalPaddingLeft()I

    move-result v38

    sub-int v36, v36, v38

    .line 9606
    invoke-virtual/range {p0 .. p0}, getTotalPaddingTop()I

    move-result v38

    sub-int v37, v37, v38

    .line 9608
    invoke-virtual/range {p0 .. p0}, getScrollX()I

    move-result v38

    add-int v36, v36, v38

    .line 9609
    invoke-virtual/range {p0 .. p0}, getScrollY()I

    move-result v38

    add-int v37, v37, v38

    .line 9611
    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 9612
    .local v6, "curLine":I
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v18

    move/from16 v1, v38

    invoke-virtual {v0, v6, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v21

    .local v21, "off":I
    move-object/from16 v38, v30

    .line 9614
    check-cast v38, Landroid/text/Spannable;

    const-class v39, Landroid/text/style/URLSpan;

    move-object/from16 v0, v38

    move/from16 v1, v21

    move/from16 v2, v21

    move-object/from16 v3, v39

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/URLSpan;

    .line 9615
    .local v19, "link":[Landroid/text/style/URLSpan;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v38, v0

    if-eqz v38, :cond_3d9

    .line 9616
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, doShowingHermes:Z

    move-object/from16 v38, v30

    .line 9618
    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    aget-object v39, v19, v39

    invoke-interface/range {v38 .. v39}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v29

    .local v29, "start":I
    move-object/from16 v38, v30

    .line 9619
    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    aget-object v39, v19, v39

    invoke-interface/range {v38 .. v39}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 9621
    .local v9, "end":I
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-interface {v0, v1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    .line 9623
    .local v33, "url":Ljava/lang/String;
    sget-object v38, emailPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 9624
    .local v20, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v38

    if-eqz v38, :cond_22f

    .line 9625
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_98

    .line 9595
    .end local v6    # "curLine":I
    .end local v9    # "end":I
    .end local v19    # "link":[Landroid/text/style/URLSpan;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "off":I
    .end local v29    # "start":I
    .end local v33    # "url":Ljava/lang/String;
    .end local v34    # "urlSpans":[Landroid/text/style/URLSpan;
    .end local v36    # "x":I
    .end local v37    # "y":I
    :catch_229
    move-exception v7

    .line 9596
    .restart local v7    # "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_174

    .line 9627
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "curLine":I
    .restart local v9    # "end":I
    .restart local v19    # "link":[Landroid/text/style/URLSpan;
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    .restart local v21    # "off":I
    .restart local v29    # "start":I
    .restart local v33    # "url":Ljava/lang/String;
    .restart local v34    # "urlSpans":[Landroid/text/style/URLSpan;
    .restart local v36    # "x":I
    .restart local v37    # "y":I
    :cond_22f
    sget-object v38, urlPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 9628
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v38

    if-nez v38, :cond_245

    .line 9629
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_98

    .line 9632
    :cond_245
    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v25

    .line 9633
    .local v25, "sLine":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 9635
    .local v8, "eLine":I
    const/16 v28, 0x0

    .line 9636
    .local v28, "spanStartX":I
    const/16 v27, 0x0

    .line 9637
    .local v27, "spanEndX":I
    move/from16 v0, v25

    if-ne v6, v0, :cond_38d

    .line 9638
    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    .line 9642
    :goto_268
    if-ne v6, v8, :cond_39e

    .line 9643
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v27, v0

    .line 9648
    :goto_275
    move/from16 v0, v28

    move/from16 v1, v36

    if-gt v0, v1, :cond_3d0

    move/from16 v0, v36

    move/from16 v1, v27

    if-gt v0, v1, :cond_3d0

    .line 9649
    move-object/from16 v0, p0

    iget-object v0, v0, mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-object v39, v19, v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_387

    .line 9650
    move-object/from16 v0, p0

    iget-wide v0, v0, mHoverEnterTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-lez v38, :cond_3b5

    .line 9651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-wide v0, v0, mHoverEnterTime:J

    move-wide/from16 v40, v0

    sub-long v10, v38, v40

    .line 9652
    .local v10, "elipse":J
    const-wide/16 v38, 0x12c

    cmp-long v38, v10, v38

    if-lez v38, :cond_387

    .line 9653
    const/4 v14, 0x0

    .line 9655
    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :try_start_2b0
    new-instance v15, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v15, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_2bb
    .catch Ljava/lang/IllegalStateException; {:try_start_2b0 .. :try_end_2bb} :catch_3ab

    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    .local v15, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    move-object v14, v15

    .line 9659
    .end local v15    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_2bc
    move-object/from16 v0, p0

    iget-object v0, v0, mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2c9

    .line 9660
    if-eqz v14, :cond_2c9

    .line 9661
    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V

    .line 9664
    :cond_2c9
    const/16 v38, 0x0

    aget-object v38, v19, v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, mHoveredSpan:Ljava/lang/Object;

    .line 9665
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverEnterTime:J

    .line 9666
    if-eqz v14, :cond_387

    .line 9667
    invoke-virtual/range {p0 .. p0}, getTotalPaddingTop()I

    move-result v32

    .line 9668
    .local v32, "topPadding":I
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v38

    add-int v31, v38, v32

    .line 9669
    .local v31, "top":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v38

    add-int v5, v38, v32

    .line 9671
    .local v5, "bottom":I
    new-instance v26, Landroid/graphics/PointF;

    const/high16 v38, 0x3f800000    # 1.0f

    const/high16 v39, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9672
    .local v26, "scaleRatio":Landroid/graphics/PointF;
    const/16 v35, 0x0

    .line 9673
    .local v35, "viewRootImpl":Landroid/view/ViewRootImpl;
    invoke-virtual/range {p0 .. p0}, isScaleWindow()Z

    move-result v38

    if-eqz v38, :cond_310

    if-eqz v35, :cond_310

    .line 9674
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v26

    .line 9676
    :cond_310
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v38

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v38, v38, v39

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    mul-float v13, v38, v39

    .line 9677
    .local v13, "gabTop":F
    int-to-float v0, v5

    move/from16 v38, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v39

    sub-float v38, v38, v39

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    mul-float v12, v38, v39

    .line 9679
    .local v12, "gabBtm":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v22, v0

    .line 9680
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v23, v0

    .line 9682
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v31, v0

    .line 9683
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v38, v0

    add-float v38, v38, v12

    move/from16 v0, v38

    float-to-int v5, v0

    .line 9685
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 9686
    .local v24, "rect":Landroid/graphics/Rect;
    add-int/lit8 v38, v22, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v31

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9688
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_387

    .line 9689
    const/16 v38, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v38

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager;->showHermes(Ljava/lang/String;Landroid/graphics/Rect;I)V

    .line 9690
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, doShowingHermes:Z

    .line 9711
    .end local v5    # "bottom":I
    .end local v10    # "elipse":J
    .end local v12    # "gabBtm":F
    .end local v13    # "gabTop":F
    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    .end local v24    # "rect":Landroid/graphics/Rect;
    .end local v26    # "scaleRatio":Landroid/graphics/PointF;
    .end local v31    # "top":I
    .end local v32    # "topPadding":I
    .end local v35    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_387
    :goto_387
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_98

    .line 9640
    :cond_38d
    const/16 v38, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto/16 :goto_268

    .line 9645
    :cond_39e
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v27, v0

    goto/16 :goto_275

    .line 9656
    .restart local v10    # "elipse":J
    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :catch_3ab
    move-exception v16

    .line 9657
    .restart local v16    # "ie":Ljava/lang/IllegalStateException;
    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHover : URLSpan1 **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2bc

    .line 9695
    .end local v10    # "elipse":J
    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    .end local v16    # "ie":Ljava/lang/IllegalStateException;
    :cond_3b5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverEnterTime:J

    .line 9696
    new-instance v38, Landroid/widget/TextView$6;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$6;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, post(Ljava/lang/Runnable;)Z

    goto :goto_387

    .line 9709
    :cond_3d0
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverExitTime:J

    goto :goto_387

    .line 9714
    .end local v8    # "eLine":I
    .end local v9    # "end":I
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v25    # "sLine":I
    .end local v27    # "spanEndX":I
    .end local v28    # "spanStartX":I
    .end local v29    # "start":I
    .end local v33    # "url":Ljava/lang/String;
    :cond_3d9
    move-object/from16 v0, p0

    iget-boolean v0, v0, doShowingHermes:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3f5

    .line 9715
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    .line 9717
    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_3ea
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3ed
    .catch Landroid/os/RemoteException; {:try_start_3ea .. :try_end_3ed} :catch_447

    .line 9721
    :goto_3ed
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, doShowingHermes:Z

    .line 9726
    .end local v6    # "curLine":I
    .end local v19    # "link":[Landroid/text/style/URLSpan;
    .end local v21    # "off":I
    .end local v36    # "x":I
    .end local v37    # "y":I
    :cond_3f5
    move-object/from16 v0, p0

    iget-object v0, v0, mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_479

    .line 9727
    move-object/from16 v0, p0

    iget-wide v0, v0, mHoverExitTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-lez v38, :cond_459

    .line 9728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-wide v0, v0, mHoverExitTime:J

    move-wide/from16 v40, v0

    sub-long v10, v38, v40

    .line 9729
    .restart local v10    # "elipse":J
    const-wide/16 v38, 0x12c

    cmp-long v38, v10, v38

    if-lez v38, :cond_441

    .line 9731
    :try_start_41b
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 9732
    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V
    :try_end_429
    .catch Ljava/lang/IllegalStateException; {:try_start_41b .. :try_end_429} :catch_450

    .line 9736
    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_429
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, mHoveredSpan:Ljava/lang/Object;

    .line 9737
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverEnterTime:J

    .line 9738
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverExitTime:J

    .line 9749
    .end local v10    # "elipse":J
    :cond_441
    :goto_441
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_98

    .line 9718
    .restart local v6    # "curLine":I
    .restart local v19    # "link":[Landroid/text/style/URLSpan;
    .restart local v21    # "off":I
    .restart local v36    # "x":I
    .restart local v37    # "y":I
    :catch_447
    move-exception v7

    .line 9719
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v38, "TextView"

    const-string v39, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3ed

    .line 9733
    .end local v6    # "curLine":I
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v19    # "link":[Landroid/text/style/URLSpan;
    .end local v21    # "off":I
    .end local v36    # "x":I
    .end local v37    # "y":I
    .restart local v10    # "elipse":J
    :catch_450
    move-exception v16

    .line 9734
    .restart local v16    # "ie":Ljava/lang/IllegalStateException;
    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHover : hover exit **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_429

    .line 9741
    .end local v10    # "elipse":J
    .end local v16    # "ie":Ljava/lang/IllegalStateException;
    :cond_459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, mHoverExitTime:J

    .line 9742
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    .line 9744
    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_46c
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_46f
    .catch Landroid/os/RemoteException; {:try_start_46c .. :try_end_46f} :catch_470

    goto :goto_441

    .line 9745
    :catch_470
    move-exception v7

    .line 9746
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v38, "TextView"

    const-string v39, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_441

    .line 9753
    .end local v4    # "action":I
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v17    # "isBtnPressed":Z
    .end local v18    # "layout":Landroid/text/Layout;
    .end local v22    # "rawX":I
    .end local v23    # "rawY":I
    .end local v34    # "urlSpans":[Landroid/text/style/URLSpan;
    :cond_479
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_98
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 10389
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10391
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v0

    .line 10392
    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 10394
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2d

    .line 10395
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 10396
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 10397
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 10399
    :cond_2d
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 11
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v8, 0x1

    .line 10404
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10406
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v2

    .line 10407
    .local v2, "isPassword":Z
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 10409
    if-eqz v2, :cond_13

    invoke-direct {p0}, shouldSpeakPasswordsForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 10410
    :cond_13
    invoke-virtual {p0}, getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 10413
    :cond_1a
    iget-object v4, p0, mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v5, :cond_23

    .line 10414
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 10417
    :cond_23
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3e

    .line 10418
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    iget v4, v4, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 10420
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3e

    .line 10421
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 10422
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 10426
    :cond_3e
    iget-object v4, p0, mText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 10427
    const/16 v4, 0x100

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10428
    const/16 v4, 0x200

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10429
    const/16 v4, 0x1f

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 10434
    const/high16 v4, 0x20000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10437
    :cond_5a
    invoke-virtual {p0}, isFocused()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 10438
    invoke-virtual {p0}, canCopy()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 10439
    const/16 v4, 0x4000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10441
    :cond_6b
    invoke-virtual {p0}, canPaste()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 10442
    const v4, 0x8000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10444
    :cond_77
    invoke-virtual {p0}, canCut()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 10445
    const/high16 v4, 0x10000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 10447
    :cond_82
    invoke-virtual {p0}, canShare()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 10448
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/high16 v5, 0x10000000

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040461

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 10452
    :cond_9d
    invoke-virtual {p0}, canProcessText()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 10453
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v4, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10458
    :cond_aa
    iget-object v4, p0, mFilters:[Landroid/text/InputFilter;

    array-length v3, v4

    .line 10459
    .local v3, "numFilters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ae
    if-ge v1, v3, :cond_c4

    .line 10460
    iget-object v4, p0, mFilters:[Landroid/text/InputFilter;

    aget-object v0, v4, v1

    .line 10461
    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v4, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_c1

    .line 10462
    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 10459
    :cond_c1
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    .line 10466
    :cond_c4
    invoke-virtual {p0}, isSingleLine()Z

    move-result v4

    if-nez v4, :cond_cd

    .line 10467
    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 10469
    :cond_cd
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 6911
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v3, 0x3f1

    if-ne p1, v3, :cond_20

    .line 6912
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v3

    iget v4, p0, mClipboardDataFormat:I

    iget-object v5, p0, mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/ClipboardExManager;->showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z

    move-result v0

    .line 6913
    .local v0, "isShownClipboard":Z
    if-nez v0, :cond_20

    .line 6914
    const-string v3, "TextView"

    const-string v4, "Samsung clipboard is not shown"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6920
    .end local v0    # "isShownClipboard":Z
    :cond_20
    const/16 v3, 0x13

    if-eq p1, v3, :cond_30

    const/16 v3, 0x14

    if-eq p1, v3, :cond_30

    const/16 v3, 0x15

    if-eq p1, v3, :cond_30

    const/16 v3, 0x16

    if-ne p1, v3, :cond_3b

    .line 6922
    :cond_30
    invoke-virtual {p0}, stopTextActionMode()V

    .line 6924
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 6925
    iput-boolean v2, p0, mChangedSelectionBySIP:Z

    .line 6930
    :cond_3b
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v1

    .line 6931
    .local v1, "which":I
    if-nez v1, :cond_46

    .line 6932
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6935
    :cond_46
    return v2
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 6940
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6942
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 6943
    .local v2, "which":I
    if-nez v2, :cond_11

    .line 6945
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 6978
    :goto_10
    return v3

    .line 6947
    :cond_11
    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    move v3, v4

    .line 6949
    goto :goto_10

    .line 6952
    :cond_16
    add-int/lit8 p2, p2, -0x1

    .line 6959
    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6960
    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v4, :cond_49

    .line 6962
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6963
    :goto_29
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_44

    .line 6964
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6965
    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_29

    .line 6967
    :cond_44
    invoke-virtual {p0}, hideErrorIfUnchanged()V

    :cond_47
    move v3, v4

    .line 6978
    goto :goto_10

    .line 6969
    :cond_49
    const/4 v3, 0x2

    if-ne v2, v3, :cond_47

    .line 6971
    iget-object v5, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 6972
    :goto_55
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_47

    .line 6973
    iget-object v5, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 6974
    iget-object v5, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_55
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6874
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, p2}, handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6875
    const/4 v0, 0x1

    .line 6877
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v1, 0x1020033

    .line 10072
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 10074
    sparse-switch p1, :sswitch_data_98

    .line 10125
    :cond_e
    :goto_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_12
    return v0

    .line 10076
    :sswitch_13
    invoke-virtual {p0}, canSelectText()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10077
    const v0, 0x102001f

    invoke-virtual {p0, v0}, onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_12

    .line 10081
    :sswitch_21
    invoke-virtual {p0}, canUndo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10082
    const v0, 0x1020032

    invoke-virtual {p0, v0}, onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_12

    .line 10086
    :sswitch_2f
    invoke-virtual {p0}, canCut()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10087
    const v0, 0x1020020

    invoke-virtual {p0, v0}, onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_12

    .line 10091
    :sswitch_3d
    invoke-virtual {p0}, canCopy()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10092
    const v0, 0x1020021

    invoke-virtual {p0, v0}, onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_12

    .line 10096
    :sswitch_4b
    invoke-virtual {p0}, canPaste()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10097
    const v0, 0x1020022

    invoke-virtual {p0, v0}, onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_12

    .line 10101
    :sswitch_59
    invoke-virtual {p0}, canDelete()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10102
    const v0, 0x1020058

    invoke-virtual {p0, v0}, onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_12

    .line 10106
    :sswitch_67
    invoke-virtual {p0}, canRedo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10107
    invoke-virtual {p0, v1}, onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_12

    .line 10111
    :cond_72
    const/16 v0, 0x1001

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10113
    sparse-switch p1, :sswitch_data_b6

    goto :goto_e

    .line 10120
    :sswitch_7e
    invoke-virtual {p0}, canPaste()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10121
    const v0, 0x1020031

    invoke-virtual {p0, v0}, onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_12

    .line 10115
    :sswitch_8c
    invoke-virtual {p0}, canRedo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10116
    invoke-virtual {p0, v1}, onTextContextMenuItem(I)Z

    move-result v0

    goto/16 :goto_12

    .line 10074
    :sswitch_data_98
    .sparse-switch
        0x1d -> :sswitch_13
        0x1f -> :sswitch_3d
        0x20 -> :sswitch_59
        0x32 -> :sswitch_4b
        0x34 -> :sswitch_2f
        0x35 -> :sswitch_67
        0x36 -> :sswitch_21
    .end sparse-switch

    .line 10113
    :sswitch_data_b6
    .sparse-switch
        0x32 -> :sswitch_7e
        0x36 -> :sswitch_8c
    .end sparse-switch
.end method

.method public onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6859
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 6860
    iget-boolean v0, p0, mhasMultiSelection:Z

    if-eqz v0, :cond_c

    .line 6861
    invoke-virtual {p0}, clearMultiSelection()Z

    .line 6862
    const/4 v0, 0x1

    .line 6865
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x82

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 7188
    invoke-virtual {p0}, isEnabled()Z

    move-result v5

    if-nez v5, :cond_f

    .line 7189
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 7305
    :goto_e
    return v5

    .line 7192
    :cond_f
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_17

    .line 7193
    iput-boolean v7, p0, mPreventDefaultMovement:Z

    .line 7196
    :cond_17
    sparse-switch p1, :sswitch_data_156

    .line 7279
    :cond_1a
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_22

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_60

    :cond_22
    iget-boolean v5, p0, mChangedSelectionBySIP:Z

    if-eqz v5, :cond_60

    .line 7280
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7282
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_60

    invoke-virtual {p0}, hasSelection()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual {p0}, isFocused()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual {p0}, isShown()Z

    move-result v5

    if-eqz v5, :cond_60

    if-eqz v2, :cond_60

    .line 7283
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .line 7285
    .local v0, "accessoryKeyboardState":I
    and-int/lit8 v5, v0, 0x7

    if-nez v5, :cond_60

    .line 7286
    invoke-virtual {p0}, getSelectionStart()I

    move-result v3

    .line 7287
    .local v3, "start":I
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v1

    .line 7288
    .local v1, "end":I
    if-le v3, v1, :cond_5b

    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7290
    :cond_5b
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 7294
    .end local v0    # "accessoryKeyboardState":I
    .end local v1    # "end":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "start":I
    :cond_60
    iput-boolean v7, p0, mChangedSelectionBySIP:Z

    .line 7297
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_138

    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_138

    .line 7298
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v7, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_138

    move v5, v6

    .line 7299
    goto :goto_e

    .line 7198
    :sswitch_7c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 7208
    invoke-virtual {p0}, hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_ae

    .line 7209
    iget-object v5, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_ae

    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_ae

    iget-object v5, p0, mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_ae

    invoke-virtual {p0}, onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 7211
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7212
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 7213
    if-eqz v2, :cond_ae

    invoke-virtual {p0}, getShowSoftInputOnFocus()Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 7214
    invoke-virtual {v2, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7219
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_ae
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_e

    .line 7222
    :sswitch_b4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 7223
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_e9

    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v5, :cond_e9

    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v5, v5, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v5, :cond_e9

    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v5, v5, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v5, :cond_e9

    .line 7226
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v5, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 7227
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v5, v5, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v5, p0, v7, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_e9

    move v5, v6

    .line 7229
    goto/16 :goto_e

    .line 7233
    :cond_e9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_f7

    invoke-direct {p0}, shouldAdvanceFocusOnEnter()Z

    move-result v5

    if-eqz v5, :cond_132

    .line 7245
    :cond_f7
    invoke-virtual {p0}, hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_132

    .line 7246
    invoke-virtual {p0, v8}, focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 7248
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_117

    .line 7249
    invoke-virtual {v4, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-nez v5, :cond_111

    .line 7250
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 7260
    :cond_111
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v5, v6

    .line 7261
    goto/16 :goto_e

    .line 7262
    :cond_117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_132

    .line 7266
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7267
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_132

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_132

    .line 7268
    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7273
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "v":Landroid/view/View;
    :cond_132
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_e

    .line 7301
    :cond_138
    iget-object v5, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_14f

    iget-object v5, p0, mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_14f

    .line 7302
    iget-object v7, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_14f

    move v5, v6

    .line 7303
    goto/16 :goto_e

    .line 7305
    :cond_14f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_e

    .line 7196
    nop

    :sswitch_data_156
    .sparse-switch
        0x17 -> :sswitch_7c
        0x42 -> :sswitch_b4
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8314
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 8315
    iget v1, p0, mDeferScroll:I

    if-ltz v1, :cond_19

    .line 8316
    iget v0, p0, mDeferScroll:I

    .line 8317
    .local v0, "curs":I
    const/4 v1, -0x1

    iput v1, p0, mDeferScroll:I

    .line 8318
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, bringPointIntoView(I)Z

    .line 8320
    .end local v0    # "curs":I
    :cond_19
    return-void
.end method

.method onLocaleChanged()V
    .registers 3

    .prologue
    .line 10231
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 10232
    return-void
.end method

.method protected onMeasure(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 7952
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v33

    .line 7953
    .local v33, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 7954
    .local v15, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v34

    .line 7955
    .local v34, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 7960
    .local v16, "heightSize":I
    sget-object v5, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7961
    .local v5, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v6, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7963
    .local v6, "hintBoring":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_22

    .line 7964
    invoke-virtual/range {p0 .. p0}, getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7967
    :cond_22
    const/4 v9, -0x1

    .line 7968
    .local v9, "des":I
    const/4 v13, 0x0

    .line 7970
    .local v13, "fromexisting":Z
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v33

    if-ne v0, v2, :cond_12a

    .line 7972
    move/from16 v31, v34

    .line 8053
    .local v31, "width":I
    :cond_2c
    :goto_2c
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v31, v2

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .line 8054
    .local v3, "want":I
    move/from16 v30, v3

    .line 8056
    .local v30, "unpaddedWidth":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, mHorizontallyScrolling:Z

    if-eqz v2, :cond_42

    const/high16 v3, 0x100000

    .line 8058
    :cond_42
    move v4, v3

    .line 8059
    .local v4, "hintWant":I
    move-object/from16 v0, p0

    iget-object v2, v0, mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_26f

    move/from16 v18, v4

    .line 8061
    .local v18, "hintWidth":I
    :goto_4b
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    if-nez v2, :cond_279

    .line 8062
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v31, v2

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 8089
    :cond_63
    :goto_63
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v15, v2, :cond_308

    .line 8091
    move/from16 v14, v16

    .line 8092
    .local v14, "height":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, mDesiredHeightAtMeasure:I

    .line 8104
    :cond_6e
    :goto_6e
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v14, v2

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingBottom()I

    move-result v7

    sub-int v29, v2, v7

    .line 8105
    .local v29, "unpaddedHeight":I
    move-object/from16 v0, p0

    iget v2, v0, mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_a1

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, mMaximum:I

    if-le v2, v7, :cond_a1

    .line 8106
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v29

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 8113
    :cond_a1
    move-object/from16 v0, p0

    iget-object v2, v0, mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_bf

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v30

    if-gt v2, v0, :cond_bf

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v29

    if-le v2, v0, :cond_31d

    .line 8116
    :cond_bf
    invoke-direct/range {p0 .. p0}, registerForPreDraw()V

    .line 8122
    :goto_c2
    move-object/from16 v0, p0

    iget-boolean v2, v0, mhasMultiSelection:Z

    if-eqz v2, :cond_122

    .line 8123
    invoke-virtual/range {p0 .. p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v28

    .line 8124
    .local v28, "text":Ljava/lang/CharSequence;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v27, v0

    .line 8125
    .local v27, "selectRange":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, getVisibleTextRange([I)Z

    move-result v12

    .line 8126
    .local v12, "flag":Z
    if-eqz v28, :cond_122

    if-eqz v12, :cond_122

    move-object/from16 v2, v28

    .line 8127
    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v24

    .local v24, "multiSelStart":[I
    move-object/from16 v2, v28

    .line 8128
    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v23

    .line 8129
    .local v23, "multiSelEnd":[I
    check-cast v28, Landroid/text/Spannable;

    .end local v28    # "text":Ljava/lang/CharSequence;
    invoke-static/range {v28 .. v28}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v22

    .line 8131
    .local v22, "multiSelCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_f5
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_122

    .line 8132
    aget v26, v24, v19

    .line 8133
    .local v26, "newStart":I
    aget v25, v23, v19

    .line 8134
    .local v25, "newEnd":I
    const/4 v2, 0x0

    aget v2, v27, v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_326

    .line 8135
    const/4 v2, 0x0

    aget v26, v27, v2

    .line 8140
    :cond_109
    :goto_109
    const/4 v2, 0x0

    aget v2, v27, v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_332

    .line 8141
    const/4 v2, 0x0

    aget v25, v27, v2

    .line 8146
    :cond_113
    :goto_113
    aget v2, v24, v19

    move/from16 v0, v26

    if-ne v2, v0, :cond_11f

    aget v2, v23, v19

    move/from16 v0, v25

    if-eq v2, v0, :cond_33e

    .line 8147
    :cond_11f
    invoke-virtual/range {p0 .. p0}, clearMultiSelection()Z

    .line 8155
    .end local v12    # "flag":Z
    .end local v19    # "i":I
    .end local v22    # "multiSelCount":I
    .end local v23    # "multiSelEnd":[I
    .end local v24    # "multiSelStart":[I
    .end local v25    # "newEnd":I
    .end local v26    # "newStart":I
    .end local v27    # "selectRange":[I
    :cond_122
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v14}, setMeasuredDimension(II)V

    .line 8156
    return-void

    .line 7974
    .end local v3    # "want":I
    .end local v4    # "hintWant":I
    .end local v14    # "height":I
    .end local v18    # "hintWidth":I
    .end local v29    # "unpaddedHeight":I
    .end local v30    # "unpaddedWidth":I
    .end local v31    # "width":I
    :cond_12a
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_13e

    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_13e

    .line 7975
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-static {v2}, desired(Landroid/text/Layout;)I

    move-result v9

    .line 7978
    :cond_13e
    if-gez v9, :cond_24b

    .line 7979
    move-object/from16 v0, p0

    iget-object v2, v0, mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    .line 7980
    if-eqz v5, :cond_15e

    .line 7981
    move-object/from16 v0, p0

    iput-object v5, v0, mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7987
    :cond_15e
    :goto_15e
    if-eqz v5, :cond_164

    sget-object v2, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_24e

    .line 7988
    :cond_164
    if-gez v9, :cond_17c

    .line 7989
    move-object/from16 v0, p0

    iget-object v2, v0, mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v9, v0

    .line 7991
    :cond_17c
    move/from16 v31, v9

    .line 7996
    .restart local v31    # "width":I
    :goto_17e
    move-object/from16 v0, p0

    iget-object v11, v0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 7997
    .local v11, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_194

    .line 7998
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v31

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 7999
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v31

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 8002
    :cond_194
    move-object/from16 v0, p0

    iget-object v2, v0, mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1fa

    .line 8003
    const/16 v17, -0x1

    .line 8006
    .local v17, "hintDes":I
    move-object/from16 v0, p0

    iget-object v2, v0, mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1b0

    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1b0

    .line 8007
    move-object/from16 v0, p0

    iget-object v2, v0, mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, desired(Landroid/text/Layout;)I

    move-result v17

    .line 8010
    :cond_1b0
    if-gez v17, :cond_1d0

    .line 8011
    move-object/from16 v0, p0

    iget-object v2, v0, mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 8012
    if-eqz v6, :cond_1d0

    .line 8013
    move-object/from16 v0, p0

    iput-object v6, v0, mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 8017
    :cond_1d0
    if-eqz v6, :cond_1d6

    sget-object v2, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_254

    .line 8018
    :cond_1d6
    if-gez v17, :cond_1f0

    .line 8019
    move-object/from16 v0, p0

    iget-object v2, v0, mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v17, v0

    .line 8021
    :cond_1f0
    move/from16 v18, v17

    .line 8026
    .restart local v18    # "hintWidth":I
    :goto_1f2
    move/from16 v0, v18

    move/from16 v1, v31

    if-le v0, v1, :cond_1fa

    .line 8027
    move/from16 v31, v18

    .line 8031
    .end local v17    # "hintDes":I
    .end local v18    # "hintWidth":I
    :cond_1fa
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v31, v31, v2

    .line 8033
    move-object/from16 v0, p0

    iget v2, v0, mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_259

    .line 8034
    move-object/from16 v0, p0

    iget v2, v0, mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v31

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 8039
    :goto_21b
    move-object/from16 v0, p0

    iget v2, v0, mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_264

    .line 8040
    move-object/from16 v0, p0

    iget v2, v0, mMinWidth:I

    invoke-virtual/range {p0 .. p0}, getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v31

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 8046
    :goto_231
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v31

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 8048
    const/high16 v2, -0x80000000

    move/from16 v0, v33

    if-ne v0, v2, :cond_2c

    .line 8049
    move/from16 v0, v34

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    goto/16 :goto_2c

    .line 7984
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .end local v31    # "width":I
    :cond_24b
    const/4 v13, 0x1

    goto/16 :goto_15e

    .line 7993
    :cond_24e
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v31, v0

    .restart local v31    # "width":I
    goto/16 :goto_17e

    .line 8023
    .restart local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v17    # "hintDes":I
    :cond_254
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v18, v0

    .restart local v18    # "hintWidth":I
    goto :goto_1f2

    .line 8036
    .end local v17    # "hintDes":I
    .end local v18    # "hintWidth":I
    :cond_259
    move-object/from16 v0, p0

    iget v2, v0, mMaxWidth:I

    move/from16 v0, v31

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v31

    goto :goto_21b

    .line 8042
    :cond_264
    move-object/from16 v0, p0

    iget v2, v0, mMinWidth:I

    move/from16 v0, v31

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v31

    goto :goto_231

    .line 8059
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "want":I
    .restart local v4    # "hintWant":I
    .restart local v30    # "unpaddedWidth":I
    :cond_26f
    move-object/from16 v0, p0

    iget-object v2, v0, mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v18

    goto/16 :goto_4b

    .line 8065
    .restart local v18    # "hintWidth":I
    :cond_279
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_29c

    move/from16 v0, v18

    if-ne v0, v4, :cond_29c

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v31, v7

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_2eb

    :cond_29c
    const/16 v20, 0x1

    .line 8070
    .local v20, "layoutChanged":Z
    :goto_29e
    move-object/from16 v0, p0

    iget-object v2, v0, mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_2ee

    move-object/from16 v0, p0

    iget-object v2, v0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_2ee

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_2ee

    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_2c2

    if-eqz v13, :cond_2ee

    if-ltz v9, :cond_2ee

    if-gt v9, v3, :cond_2ee

    :cond_2c2
    const/16 v32, 0x1

    .line 8075
    .local v32, "widthChanged":Z
    :goto_2c4
    move-object/from16 v0, p0

    iget v2, v0, mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, mOldMaxMode:I

    if-ne v2, v7, :cond_2d8

    move-object/from16 v0, p0

    iget v2, v0, mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, mOldMaximum:I

    if-eq v2, v7, :cond_2f1

    :cond_2d8
    const/16 v21, 0x1

    .line 8077
    .local v21, "maximumChanged":Z
    :goto_2da
    if-nez v20, :cond_2de

    if-eqz v21, :cond_63

    .line 8078
    :cond_2de
    if-nez v21, :cond_2f4

    if-eqz v32, :cond_2f4

    .line 8079
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_63

    .line 8065
    .end local v20    # "layoutChanged":Z
    .end local v21    # "maximumChanged":Z
    .end local v32    # "widthChanged":Z
    :cond_2eb
    const/16 v20, 0x0

    goto :goto_29e

    .line 8070
    .restart local v20    # "layoutChanged":Z
    :cond_2ee
    const/16 v32, 0x0

    goto :goto_2c4

    .line 8075
    .restart local v32    # "widthChanged":Z
    :cond_2f1
    const/16 v21, 0x0

    goto :goto_2da

    .line 8081
    .restart local v21    # "maximumChanged":Z
    :cond_2f4
    invoke-virtual/range {p0 .. p0}, getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v31, v2

    invoke-virtual/range {p0 .. p0}, getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_63

    .line 8094
    .end local v20    # "layoutChanged":Z
    .end local v21    # "maximumChanged":Z
    .end local v32    # "widthChanged":Z
    :cond_308
    invoke-direct/range {p0 .. p0}, getDesiredHeight()I

    move-result v10

    .line 8096
    .local v10, "desired":I
    move v14, v10

    .line 8097
    .restart local v14    # "height":I
    move-object/from16 v0, p0

    iput v10, v0, mDesiredHeightAtMeasure:I

    .line 8099
    const/high16 v2, -0x80000000

    if-ne v15, v2, :cond_6e

    .line 8100
    move/from16 v0, v16

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_6e

    .line 8118
    .end local v10    # "desired":I
    .restart local v29    # "unpaddedHeight":I
    :cond_31d
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, scrollTo(II)V

    goto/16 :goto_c2

    .line 8137
    .restart local v12    # "flag":Z
    .restart local v19    # "i":I
    .restart local v22    # "multiSelCount":I
    .restart local v23    # "multiSelEnd":[I
    .restart local v24    # "multiSelStart":[I
    .restart local v25    # "newEnd":I
    .restart local v26    # "newStart":I
    .restart local v27    # "selectRange":[I
    :cond_326
    const/4 v2, 0x1

    aget v2, v27, v2

    move/from16 v0, v26

    if-le v0, v2, :cond_109

    .line 8138
    const/4 v2, 0x1

    aget v26, v27, v2

    goto/16 :goto_109

    .line 8143
    :cond_332
    const/4 v2, 0x1

    aget v2, v27, v2

    move/from16 v0, v25

    if-le v0, v2, :cond_113

    .line 8144
    const/4 v2, 0x1

    aget v25, v27, v2

    goto/16 :goto_113

    .line 8131
    :cond_33e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_f5
.end method

.method public onMultiSelectMenuItem(I)Z
    .registers 16
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 13741
    const/4 v0, 0x0

    .line 13742
    .local v0, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 13743
    .local v6, "source":Ljava/lang/String;
    invoke-virtual {p0}, getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v8

    .line 13744
    .local v8, "text":Ljava/lang/CharSequence;
    if-nez v8, :cond_1f

    .line 13745
    const-string v10, "TextView"

    const-string v11, "getTextFormultiSelection() text is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13810
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_1e
    :goto_1e
    return v9

    .line 13749
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :cond_1f
    const v11, 0x102005d

    if-eq p1, v11, :cond_27

    .line 13750
    invoke-virtual {p0}, clearAllMultiSelection()Z

    .line 13753
    :cond_27
    if-nez v6, :cond_31

    .line 13754
    const-string v10, "TextView"

    const-string v11, "Multi Selected Text String is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 13758
    :cond_31
    packed-switch p1, :pswitch_data_cc

    goto :goto_1e

    .line 13761
    :pswitch_35
    const/4 v11, 0x2

    new-array v4, v11, [I

    .line 13762
    .local v4, "range":[I
    invoke-virtual {p0, v4}, getVisibleTextRange([I)Z

    move-result v2

    .line 13763
    .local v2, "flag":Z
    if-nez v2, :cond_46

    .line 13764
    aput v9, v4, v9

    .line 13765
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    aput v11, v4, v10

    .line 13767
    :cond_46
    check-cast v8, Landroid/text/Spannable;

    .end local v8    # "text":Ljava/lang/CharSequence;
    aget v9, v4, v9

    aget v11, v4, v10

    invoke-static {v8, v9, v11}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 13768
    invoke-direct {p0}, showMultiSelectPopupWindow()V

    move v9, v10

    .line 13769
    goto :goto_1e

    .line 13774
    .end local v2    # "flag":Z
    .end local v4    # "range":[I
    .restart local v8    # "text":Ljava/lang/CharSequence;
    :pswitch_54
    iget-object v11, p0, mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v11, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 13777
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 13778
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 13779
    .restart local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 13780
    invoke-direct {p0, v0}, setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    :goto_6d
    move v9, v10

    .line 13785
    goto :goto_1e

    .line 13782
    :cond_6f
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13783
    .local v7, "sp":Landroid/text/Spannable;
    const/4 v9, 0x0

    invoke-static {v9, v7}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v9

    invoke-direct {p0, v9}, setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_6d

    .line 13788
    .end local v7    # "sp":Landroid/text/Spannable;
    :pswitch_7d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v6, v9, v11}, sendToDictionary(Ljava/lang/String;II)V

    move v9, v10

    .line 13789
    goto :goto_1e

    .line 13792
    :pswitch_86
    invoke-virtual {p0, v6}, sendToTranslate(Ljava/lang/String;)V

    move v9, v10

    .line 13793
    goto :goto_1e

    .line 13796
    :pswitch_8b
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13797
    .local v5, "send":Landroid/content/Intent;
    const-string/jumbo v9, "text/plain"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 13798
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13800
    :try_start_9d
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x1040461

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 13801
    .local v3, "i":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13802
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9d .. :try_end_b8} :catch_bb

    .end local v3    # "i":Landroid/content/Intent;
    :goto_b8
    move v9, v10

    .line 13807
    goto/16 :goto_1e

    .line 13803
    :catch_bb
    move-exception v1

    .line 13804
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v9, "TextView"

    const-string v11, "Share failed"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13805
    const-string v9, "TextView"

    const-string v11, "ActivityNotFoundException"

    invoke-static {v9, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b8

    .line 13758
    nop

    :pswitch_data_cc
    .packed-switch 0x102005d
        :pswitch_35
        :pswitch_54
        :pswitch_7d
        :pswitch_86
        :pswitch_8b
    .end packed-switch
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 10250
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10252
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v0

    .line 10253
    .local v0, "isPassword":Z
    if-eqz v0, :cond_f

    invoke-direct {p0}, shouldSpeakPasswordsForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 10254
    :cond_f
    invoke-virtual {p0}, getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 10255
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 10256
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10259
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_20
    return-void
.end method

.method public onPreDraw()Z
    .registers 4

    .prologue
    .line 5918
    iget-object v1, p0, mLayout:Landroid/text/Layout;

    if-nez v1, :cond_7

    .line 5919
    invoke-direct {p0}, assumeLayout()V

    .line 5922
    :cond_7
    iget-object v1, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_5d

    .line 5927
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    .line 5929
    .local v0, "curs":I
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_27

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_27

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5931
    invoke-virtual {p0}, getSelectionStart()I

    move-result v0

    .line 5939
    :cond_27
    if-gez v0, :cond_37

    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_37

    .line 5940
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5943
    :cond_37
    if-ltz v0, :cond_3c

    .line 5944
    invoke-virtual {p0, v0}, bringPointIntoView(I)Z

    .line 5953
    .end local v0    # "curs":I
    :cond_3c
    :goto_3c
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_58

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v1, :cond_58

    .line 5954
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 5955
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    .line 5959
    :cond_53
    :goto_53
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 5962
    :cond_58
    invoke-direct {p0}, unregisterForPreDraw()V

    .line 5964
    const/4 v1, 0x1

    return v1

    .line 5947
    :cond_5d
    invoke-direct {p0}, bringTextIntoView()Z

    goto :goto_3c

    .line 5956
    :cond_61
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mSelectionActionMode:Z

    if-eqz v1, :cond_53

    .line 5957
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_53
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 7519
    const/4 v0, 0x0

    return v0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .registers 34
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 10278
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 10279
    invoke-virtual/range {p0 .. p0}, hasPasswordTransformationMethod()Z

    move-result v29

    if-nez v29, :cond_13

    invoke-virtual/range {p0 .. p0}, getInputType()I

    move-result v29

    invoke-static/range {v29 .. v29}, isPasswordInputType(I)Z

    move-result v29

    if-eqz v29, :cond_97

    :cond_13
    const/4 v12, 0x1

    .line 10281
    .local v12, "isPassword":Z
    :goto_14
    if-nez v12, :cond_8b

    .line 10282
    move-object/from16 v0, p0

    iget-object v0, v0, mLayout:Landroid/text/Layout;

    move-object/from16 v29, v0

    if-nez v29, :cond_21

    .line 10283
    invoke-direct/range {p0 .. p0}, assumeLayout()V

    .line 10285
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, mLayout:Landroid/text/Layout;

    .line 10286
    .local v13, "layout":Landroid/text/Layout;
    invoke-virtual {v13}, Landroid/text/Layout;->getLineCount()I

    move-result v15

    .line 10287
    .local v15, "lineCount":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-gt v15, v0, :cond_9a

    .line 10289
    invoke-virtual/range {p0 .. p0}, getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, getSelectionStart()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, getSelectionEnd()I

    move-result v31

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 10357
    :goto_46
    const/16 v21, 0x0

    .line 10358
    .local v21, "style":I
    invoke-virtual/range {p0 .. p0}, getTypefaceStyle()I

    move-result v26

    .line 10359
    .local v26, "typefaceStyle":I
    and-int/lit8 v29, v26, 0x1

    if-eqz v29, :cond_52

    .line 10360
    or-int/lit8 v21, v21, 0x1

    .line 10362
    :cond_52
    and-int/lit8 v29, v26, 0x2

    if-eqz v29, :cond_58

    .line 10363
    or-int/lit8 v21, v21, 0x2

    .line 10367
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/text/TextPaint;->getFlags()I

    move-result v17

    .line 10368
    .local v17, "paintFlags":I
    and-int/lit8 v29, v17, 0x20

    if-eqz v29, :cond_68

    .line 10369
    or-int/lit8 v21, v21, 0x1

    .line 10371
    :cond_68
    and-int/lit8 v29, v17, 0x8

    if-eqz v29, :cond_6e

    .line 10372
    or-int/lit8 v21, v21, 0x4

    .line 10374
    :cond_6e
    and-int/lit8 v29, v17, 0x10

    if-eqz v29, :cond_74

    .line 10375
    or-int/lit8 v21, v21, 0x8

    .line 10380
    :cond_74
    invoke-virtual/range {p0 .. p0}, getTextSize()F

    move-result v29

    invoke-virtual/range {p0 .. p0}, getCurrentTextColor()I

    move-result v30

    const/16 v31, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .line 10383
    .end local v13    # "layout":Landroid/text/Layout;
    .end local v15    # "lineCount":I
    .end local v17    # "paintFlags":I
    .end local v21    # "style":I
    .end local v26    # "typefaceStyle":I
    :cond_8b
    invoke-virtual/range {p0 .. p0}, getHint()Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 10384
    return-void

    .line 10279
    .end local v12    # "isPassword":Z
    :cond_97
    const/4 v12, 0x0

    goto/16 :goto_14

    .line 10293
    .restart local v12    # "isPassword":Z
    .restart local v13    # "layout":Landroid/text/Layout;
    .restart local v15    # "lineCount":I
    :cond_9a
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 10294
    .local v23, "tmpCords":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, getLocationInWindow([I)V

    .line 10295
    const/16 v29, 0x1

    aget v25, v23, v29

    .line 10296
    .local v25, "topWindowLocation":I
    move-object/from16 v18, p0

    .line 10297
    .local v18, "root":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v27

    .line 10298
    .local v27, "viewParent":Landroid/view/ViewParent;
    :goto_b3
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/view/View;

    move/from16 v29, v0

    if-eqz v29, :cond_c4

    move-object/from16 v18, v27

    .line 10299
    check-cast v18, Landroid/view/View;

    .line 10300
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    goto :goto_b3

    .line 10302
    :cond_c4
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v28

    .line 10305
    .local v28, "windowHeight":I
    if-ltz v25, :cond_16a

    .line 10307
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, getLineAtCoordinateUnclamped(F)I

    move-result v24

    .line 10308
    .local v24, "topLine":I
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, getLineAtCoordinateUnclamped(F)I

    move-result v6

    .line 10317
    .local v6, "bottomLine":I
    :goto_e3
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    sub-int v10, v24, v29

    .line 10318
    .local v10, "expandedTopLine":I
    if-gez v10, :cond_ec

    .line 10319
    const/4 v10, 0x0

    .line 10321
    :cond_ec
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    add-int v8, v6, v29

    .line 10322
    .local v8, "expandedBottomLine":I
    if-lt v8, v15, :cond_f6

    .line 10323
    add-int/lit8 v8, v15, -0x1

    .line 10326
    :cond_f6
    invoke-virtual {v13, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 10327
    .local v9, "expandedTopChar":I
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 10330
    .local v7, "expandedBottomChar":I
    invoke-virtual/range {p0 .. p0}, getSelectionStart()I

    move-result v20

    .line 10331
    .local v20, "selStart":I
    invoke-virtual/range {p0 .. p0}, getSelectionEnd()I

    move-result v19

    .line 10332
    .local v19, "selEnd":I
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_118

    .line 10333
    move/from16 v0, v20

    if-ge v0, v9, :cond_112

    .line 10334
    move/from16 v9, v20

    .line 10336
    :cond_112
    move/from16 v0, v19

    if-le v0, v7, :cond_118

    .line 10337
    move/from16 v7, v19

    .line 10341
    :cond_118
    invoke-virtual/range {p0 .. p0}, getText()Ljava/lang/CharSequence;

    move-result-object v22

    .line 10342
    .local v22, "text":Ljava/lang/CharSequence;
    if-gtz v9, :cond_126

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_12c

    .line 10343
    :cond_126
    move-object/from16 v0, v22

    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 10345
    :cond_12c
    sub-int v29, v20, v9

    sub-int v30, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 10346
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 10347
    .local v16, "lineOffsets":[I
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v14, v0, [I

    .line 10348
    .local v14, "lineBaselines":[I
    invoke-virtual/range {p0 .. p0}, getBaselineOffset()I

    move-result v5

    .line 10349
    .local v5, "baselineOffset":I
    move/from16 v11, v24

    .local v11, "i":I
    :goto_153
    if-gt v11, v6, :cond_18f

    .line 10350
    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v30

    aput v30, v16, v29

    .line 10351
    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v30

    add-int v30, v30, v5

    aput v30, v14, v29

    .line 10349
    add-int/lit8 v11, v11, 0x1

    goto :goto_153

    .line 10312
    .end local v5    # "baselineOffset":I
    .end local v6    # "bottomLine":I
    .end local v7    # "expandedBottomChar":I
    .end local v8    # "expandedBottomLine":I
    .end local v9    # "expandedTopChar":I
    .end local v10    # "expandedTopLine":I
    .end local v11    # "i":I
    .end local v14    # "lineBaselines":[I
    .end local v16    # "lineOffsets":[I
    .end local v19    # "selEnd":I
    .end local v20    # "selStart":I
    .end local v22    # "text":Ljava/lang/CharSequence;
    .end local v24    # "topLine":I
    :cond_16a
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, getLineAtCoordinateUnclamped(F)I

    move-result v24

    .line 10313
    .restart local v24    # "topLine":I
    add-int/lit8 v29, v28, -0x1

    sub-int v29, v29, v25

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, getLineAtCoordinateUnclamped(F)I

    move-result v6

    .restart local v6    # "bottomLine":I
    goto/16 :goto_e3

    .line 10353
    .restart local v5    # "baselineOffset":I
    .restart local v7    # "expandedBottomChar":I
    .restart local v8    # "expandedBottomLine":I
    .restart local v9    # "expandedTopChar":I
    .restart local v10    # "expandedTopLine":I
    .restart local v11    # "i":I
    .restart local v14    # "lineBaselines":[I
    .restart local v16    # "lineOffsets":[I
    .restart local v19    # "selEnd":I
    .restart local v20    # "selStart":I
    .restart local v22    # "text":Ljava/lang/CharSequence;
    :cond_18f
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    goto/16 :goto_46
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 11408
    iget v0, p0, mLastLayoutDirection:I

    if-ne v0, p1, :cond_5

    .line 11417
    :cond_4
    :goto_4
    return-void

    .line 11411
    :cond_5
    iput p1, p0, mLastLayoutDirection:I

    .line 11414
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_4

    .line 11415
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    goto :goto_4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 4644
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_8

    .line 4645
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4698
    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object v3, p1

    .line 4649
    check-cast v3, Landroid/widget/TextView$SavedState;

    .line 4650
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4653
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1b

    .line 4654
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, setText(Ljava/lang/CharSequence;)V

    .line 4657
    :cond_1b
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_7c

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_7c

    .line 4658
    iget-object v4, p0, mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_7c

    .line 4659
    iget-object v4, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4661
    .local v1, "len":I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_37

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_9a

    .line 4662
    :cond_37
    const-string v2, ""

    .line 4664
    .local v2, "restored":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3f

    .line 4665
    const-string v2, "(restored) "

    .line 4668
    :cond_3f
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_7c
    :goto_7c
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8a

    .line 4683
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4685
    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, post(Ljava/lang/Runnable;)Z

    .line 4694
    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_8a
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-eqz v4, :cond_7

    .line 4695
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 4696
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v4, v5}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    goto/16 :goto_7

    .line 4672
    .restart local v1    # "len":I
    :cond_9a
    iget-object v4, p0, mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4674
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_7c

    .line 4675
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 4676
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_7c
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 11331
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 11333
    invoke-virtual {p0}, getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    .line 11334
    .local v0, "newTextDir":Landroid/text/TextDirectionHeuristic;
    iget-object v1, p0, mTextDir:Landroid/text/TextDirectionHeuristic;

    if-eq v1, v0, :cond_14

    .line 11335
    iput-object v0, p0, mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 11336
    iget-object v1, p0, mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_14

    .line 11337
    invoke-direct {p0}, checkForRelayout()V

    .line 11340
    :cond_14
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    .prologue
    .line 4546
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 4583
    .local v5, "superState":Landroid/os/Parcelable;
    iget-boolean v1, p0, mFreezesText:Z

    .line 4584
    .local v1, "save":Z
    const/4 v4, 0x0

    .line 4585
    .local v4, "start":I
    const/4 v0, 0x0

    .line 4587
    .local v0, "end":I
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_19

    .line 4588
    invoke-virtual {p0}, getSelectionStart()I

    move-result v4

    .line 4589
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    .line 4590
    if-gez v4, :cond_18

    if-ltz v0, :cond_19

    .line 4592
    :cond_18
    const/4 v1, 0x1

    .line 4596
    :cond_19
    if-eqz v1, :cond_6a

    .line 4597
    new-instance v3, Landroid/widget/TextView$SavedState;

    invoke-direct {v3, v5}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4599
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    iput v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    .line 4600
    iput v0, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 4602
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_61

    .line 4603
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4605
    .local v2, "sp":Landroid/text/Spannable;
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_3f

    .line 4606
    invoke-virtual {p0, v2}, removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 4607
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4610
    :cond_3f
    iput-object v2, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 4615
    .end local v2    # "sp":Landroid/text/Spannable;
    :goto_41
    invoke-virtual {p0}, isFocused()Z

    move-result v6

    if-eqz v6, :cond_4e

    if-ltz v4, :cond_4e

    if-ltz v0, :cond_4e

    .line 4616
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 4619
    :cond_4e
    invoke-virtual {p0}, getError()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4621
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_60

    .line 4622
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 4627
    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_60
    :goto_60
    return-object v3

    .line 4612
    .restart local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_61
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_41

    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_6a
    move-object v3, v5

    .line 4627
    goto :goto_60
.end method

.method public onScreenStateChanged(I)V
    .registers 3
    .param p1, "screenState"    # I

    .prologue
    .line 6021
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 6022
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    .line 6023
    :cond_c
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .prologue
    .line 10846
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10847
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    .line 10848
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    .line 10850
    :cond_c
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 4
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 9074
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, sendAccessibilityEvent(I)V

    .line 9075
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 9403
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 9406
    iget-boolean v0, p0, mDispatchTemporaryDetach:Z

    if-nez v0, :cond_a

    iput-boolean v1, p0, mTemporaryDetach:Z

    .line 9410
    :cond_a
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_12

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 9411
    :cond_12
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 9064
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 16
    .param p1, "id"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 10660
    const/4 v4, 0x0

    .line 10661
    .local v4, "min":I
    iget-object v11, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 10663
    .local v3, "max":I
    invoke-virtual {p0}, isFocused()Z

    move-result v11

    if-eqz v11, :cond_28

    .line 10664
    invoke-virtual {p0}, getSelectionStart()I

    move-result v6

    .line 10665
    .local v6, "selStart":I
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v5

    .line 10667
    .local v5, "selEnd":I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10668
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 10672
    .end local v5    # "selEnd":I
    .end local v6    # "selStart":I
    :cond_28
    const/4 v0, 0x0

    .line 10675
    .local v0, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    sparse-switch p1, :sswitch_data_16e

    move v10, v8

    .line 10803
    :cond_2d
    :goto_2d
    return v10

    .line 10680
    :sswitch_2e
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_39

    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_39

    move v8, v10

    .line 10682
    .local v8, "shouldRestartActionMode":Z
    :cond_39
    invoke-virtual {p0}, stopTextActionMode()V

    .line 10683
    invoke-virtual {p0}, selectAllText()Z

    .line 10684
    if-eqz v8, :cond_2d

    .line 10685
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_2d

    .line 10690
    .end local v8    # "shouldRestartActionMode":Z
    :sswitch_47
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_2d

    .line 10691
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->undo()V

    goto :goto_2d

    .line 10696
    :sswitch_51
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_2d

    .line 10697
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->redo()V

    goto :goto_2d

    .line 10702
    :sswitch_5b
    invoke-direct {p0, v4, v3, v10}, paste(IIZ)V

    .line 10703
    invoke-virtual {p0}, stopTextActionMode()V

    goto :goto_2d

    .line 10707
    :sswitch_62
    invoke-direct {p0, v4, v3, v8}, paste(IIZ)V

    goto :goto_2d

    .line 10712
    :sswitch_66
    iget-object v11, p0, mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v11, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_70

    move v10, v8

    .line 10713
    goto :goto_2d

    .line 10717
    :cond_70
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 10718
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 10719
    .restart local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 10720
    invoke-direct {p0, v0}, setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    .line 10725
    :goto_87
    invoke-virtual {p0, v4, v3}, deleteText_internal(II)V

    .line 10726
    invoke-virtual {p0}, stopTextActionMode()V

    goto :goto_2d

    .line 10722
    :cond_8e
    invoke-virtual {p0, v4, v3}, getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_87

    .line 10731
    :sswitch_9a
    iget-object v11, p0, mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v11, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_a4

    move v10, v8

    .line 10732
    goto :goto_2d

    .line 10736
    :cond_a4
    invoke-virtual {p0}, getSecClipboardEnabled()Z

    move-result v11

    if-eqz v11, :cond_c0

    .line 10737
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 10738
    .restart local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 10739
    invoke-direct {p0, v0}, setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    .line 10745
    :goto_bb
    invoke-virtual {p0}, stopTextActionMode()V

    goto/16 :goto_2d

    .line 10741
    :cond_c0
    invoke-virtual {p0, v4, v3}, getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_bb

    .line 10749
    :sswitch_cc
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_2d

    .line 10750
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->replace()V

    goto/16 :goto_2d

    .line 10755
    :sswitch_d7
    invoke-virtual {p0, v4, v3}, deleteText_internal(II)V

    goto/16 :goto_2d

    .line 10759
    :sswitch_dc
    invoke-direct {p0}, shareSelectedText()V

    goto/16 :goto_2d

    .line 10763
    :sswitch_e1
    invoke-virtual {p0}, getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v11

    iget v12, p0, mClipboardDataFormat:I

    iget-object v13, p0, mPasteEventListener:Landroid/widget/TextView$TextViewClipboardEventListener;

    invoke-virtual {v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z

    move-result v2

    .line 10764
    .local v2, "isShownClipboard":Z
    if-nez v2, :cond_2d

    .line 10765
    const-string v11, "TextView"

    const-string v12, "clip board is not shown"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 10770
    .end local v2    # "isShownClipboard":Z
    :sswitch_f8
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10771
    .local v7, "send":Landroid/content/Intent;
    iget-object v11, p0, mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10772
    .local v9, "source":Ljava/lang/String;
    const-string/jumbo v11, "new_search"

    invoke-virtual {v7, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10773
    const-string/jumbo v11, "query"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10774
    const-string v11, "com.android.browser.application_id"

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10776
    const/high16 v11, 0x10000000

    :try_start_124
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10777
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_124 .. :try_end_12e} :catch_130

    goto/16 :goto_2d

    .line 10778
    :catch_130
    move-exception v1

    .line 10780
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v11, "TextView"

    const-string v12, "WebSearch failed"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10781
    const-string v11, "TextView"

    const-string v12, "ActivityNotFoundException"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 10787
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v7    # "send":Landroid/content/Intent;
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_141
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_2d

    .line 10788
    iget-object v11, p0, mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10789
    .restart local v9    # "source":Ljava/lang/String;
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 10790
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v11, v9, v4, v3}, Landroid/widget/Editor;->sendToDictionary(Ljava/lang/String;II)V

    goto/16 :goto_2d

    .line 10796
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_15b
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_2d

    .line 10797
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 10798
    iget-object v11, p0, mEditor:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v11}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto/16 :goto_2d

    .line 10675
    nop

    :sswitch_data_16e
    .sparse-switch
        0x102001f -> :sswitch_2e
        0x1020020 -> :sswitch_66
        0x1020021 -> :sswitch_9a
        0x1020022 -> :sswitch_5b
        0x1020031 -> :sswitch_62
        0x1020032 -> :sswitch_47
        0x1020033 -> :sswitch_51
        0x1020034 -> :sswitch_cc
        0x1020035 -> :sswitch_dc
        0x1020055 -> :sswitch_141
        0x1020057 -> :sswitch_e1
        0x1020058 -> :sswitch_d7
        0x1020059 -> :sswitch_15b
        0x10204f9 -> :sswitch_f8
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 9759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 9761
    .local v0, "action":I
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_26

    if-nez v0, :cond_26

    .line 9763
    iget-boolean v7, p0, mFirstTouch:Z

    if-eqz v7, :cond_48

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, mLastTouchUpTime:J

    sub-long/2addr v10, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gtz v7, :cond_48

    .line 9765
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v8, v7, Landroid/widget/Editor;->mDoubleTap:Z

    .line 9766
    iput-boolean v9, p0, mFirstTouch:Z

    .line 9774
    :cond_26
    :goto_26
    if-ne v0, v8, :cond_2e

    .line 9775
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, mLastTouchUpTime:J

    .line 9778
    :cond_2e
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_53

    .line 9779
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 9781
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v7, :cond_53

    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 9848
    :cond_47
    :goto_47
    return v8

    .line 9768
    :cond_48
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 9769
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDoubleTap:Z

    .line 9770
    iput-boolean v8, p0, mFirstTouch:Z

    goto :goto_26

    .line 9787
    :cond_53
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 9794
    .local v4, "superResult":Z
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_78

    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v7, :cond_78

    if-ne v0, v8, :cond_78

    .line 9795
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 9797
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    if-eqz v7, :cond_76

    .line 9798
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 9799
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    :cond_76
    move v8, v4

    .line 9801
    goto :goto_47

    .line 9804
    :cond_78
    if-ne v0, v8, :cond_110

    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_84

    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v7, :cond_110

    :cond_84
    invoke-virtual {p0}, isFocused()Z

    move-result v7

    if-eqz v7, :cond_110

    move v6, v8

    .line 9807
    .local v6, "touchIsFinished":Z
    :goto_8b
    iget-object v7, p0, mMovement:Landroid/text/method/MovementMethod;

    if-nez v7, :cond_95

    invoke-virtual {p0}, onCheckIsTextEditor()Z

    move-result v7

    if-eqz v7, :cond_10d

    :cond_95
    invoke-virtual {p0}, isEnabled()Z

    move-result v7

    if-eqz v7, :cond_10d

    iget-object v7, p0, mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_10d

    iget-object v7, p0, mLayout:Landroid/text/Layout;

    if-eqz v7, :cond_10d

    .line 9809
    const/4 v1, 0x0

    .line 9811
    .local v1, "handled":Z
    iget-object v7, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_b5

    .line 9812
    iget-object v10, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v7, p0, mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v10, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 9815
    :cond_b5
    invoke-virtual {p0}, isTextSelectable()Z

    move-result v5

    .line 9816
    .local v5, "textIsSelectable":Z
    if-eqz v6, :cond_e2

    iget-boolean v7, p0, mLinksClickable:Z

    if-eqz v7, :cond_e2

    iget v7, p0, mAutoLinkMask:I

    if-eqz v7, :cond_e2

    if-eqz v5, :cond_e2

    .line 9820
    iget-object v7, p0, mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {p0}, getSelectionStart()I

    move-result v10

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v11

    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 9823
    .local v3, "links":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-lez v7, :cond_e2

    .line 9824
    aget-object v7, v3, v9

    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 9825
    const/4 v1, 0x1

    .line 9829
    .end local v3    # "links":[Landroid/text/style/ClickableSpan;
    :cond_e2
    if-eqz v6, :cond_10b

    invoke-virtual {p0}, isTextEditable()Z

    move-result v7

    if-nez v7, :cond_ec

    if-eqz v5, :cond_10b

    .line 9831
    :cond_ec
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 9832
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 9833
    if-nez v5, :cond_105

    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v7, :cond_105

    .line 9834
    if-eqz v2, :cond_104

    invoke-virtual {v2, p0, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_104

    move v9, v8

    :cond_104
    or-int/2addr v1, v9

    .line 9838
    :cond_105
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    .line 9840
    const/4 v1, 0x1

    .line 9843
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_10b
    if-nez v1, :cond_47

    .end local v1    # "handled":Z
    .end local v5    # "textIsSelectable":Z
    :cond_10d
    move v8, v4

    .line 9848
    goto/16 :goto_47

    .end local v6    # "touchIsFinished":Z
    :cond_110
    move v6, v9

    .line 9804
    goto/16 :goto_8b
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9893
    iget-object v0, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1c

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 9894
    iget-object v1, p0, mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 9895
    const/4 v0, 0x1

    .line 9899
    :goto_1b
    return v0

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9459
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9460
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_11

    if-eqz p2, :cond_11

    .line 9461
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 9462
    invoke-virtual {p0}, stopTextActionMode()V

    .line 9465
    :cond_11
    if-eqz p2, :cond_16

    .line 9466
    invoke-virtual {p0}, clearMultiSelection()Z

    .line 9469
    :cond_16
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 9450
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 9452
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_c

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    .line 9454
    :cond_c
    invoke-direct {p0, p1}, startStopMarquee(Z)V

    .line 9455
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 10479
    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_12

    iget-object v7, p0, mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v7, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 10571
    :cond_11
    :goto_11
    return v1

    .line 10483
    :cond_12
    sparse-switch p1, :sswitch_data_142

    .line 10571
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_11

    .line 10485
    :sswitch_1a
    const/4 v1, 0x0

    .line 10488
    .local v1, "handled":Z
    invoke-virtual {p0}, isClickable()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {p0}, isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 10489
    :cond_27
    invoke-virtual {p0}, isFocusable()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {p0}, isFocused()Z

    move-result v5

    if-nez v5, :cond_36

    .line 10490
    invoke-virtual {p0}, requestFocus()Z

    .line 10493
    :cond_36
    invoke-virtual {p0}, performClick()Z

    .line 10494
    const/4 v1, 0x1

    .line 10498
    :cond_3a
    iget-object v5, p0, mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_44

    invoke-virtual {p0}, onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_44
    invoke-virtual {p0}, isEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_11

    iget-object v5, p0, mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_11

    invoke-virtual {p0}, isTextEditable()Z

    move-result v5

    if-nez v5, :cond_60

    invoke-virtual {p0}, isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_60
    invoke-virtual {p0}, isFocused()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 10502
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 10503
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 10504
    invoke-virtual {p0}, isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_11

    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_11

    if-eqz v2, :cond_11

    .line 10505
    invoke-virtual {v2, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_11

    .line 10512
    .end local v1    # "handled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_85
    invoke-virtual {p0}, isFocused()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-virtual {p0}, canCopy()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 10513
    const v5, 0x1020021

    invoke-virtual {p0, v5}, onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_9a
    move v1, v6

    .line 10517
    goto/16 :goto_11

    .line 10519
    :sswitch_9d
    invoke-virtual {p0}, isFocused()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-virtual {p0}, canPaste()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 10520
    const v5, 0x1020022

    invoke-virtual {p0, v5}, onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_b2
    move v1, v6

    .line 10524
    goto/16 :goto_11

    .line 10526
    :sswitch_b5
    invoke-virtual {p0}, isFocused()Z

    move-result v5

    if-eqz v5, :cond_ca

    invoke-virtual {p0}, canCut()Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 10527
    const v5, 0x1020020

    invoke-virtual {p0, v5}, onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_ca
    move v1, v6

    .line 10531
    goto/16 :goto_11

    .line 10533
    :sswitch_cd
    invoke-direct {p0}, ensureIterableTextForAccessibilitySelectable()V

    .line 10534
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .line 10535
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_d9

    move v1, v6

    .line 10536
    goto/16 :goto_11

    .line 10538
    :cond_d9
    if-eqz p2, :cond_100

    const-string v7, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 10540
    .local v3, "start":I
    :goto_e1
    if-eqz p2, :cond_102

    const-string v7, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 10542
    .local v0, "end":I
    :goto_e9
    invoke-virtual {p0}, getSelectionStart()I

    move-result v7

    if-ne v7, v3, :cond_f5

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v7

    if-eq v7, v0, :cond_11e

    .line 10544
    :cond_f5
    if-ne v3, v0, :cond_104

    if-ne v0, v5, :cond_104

    .line 10545
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto/16 :goto_11

    .end local v0    # "end":I
    .end local v3    # "start":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_100
    move v3, v5

    .line 10538
    goto :goto_e1

    .restart local v3    # "start":I
    :cond_102
    move v0, v5

    .line 10540
    goto :goto_e9

    .line 10548
    .restart local v0    # "end":I
    :cond_104
    if-ltz v3, :cond_11e

    if-gt v3, v0, :cond_11e

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v0, v5, :cond_11e

    .line 10549
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10551
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_11

    .line 10552
    iget-object v5, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_11

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_11e
    move v1, v6

    .line 10557
    goto/16 :goto_11

    .line 10560
    .end local v0    # "end":I
    .end local v3    # "start":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :sswitch_121
    invoke-direct {p0}, ensureIterableTextForAccessibilitySelectable()V

    .line 10561
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    goto/16 :goto_11

    .line 10564
    :sswitch_12a
    invoke-virtual {p0}, isFocused()Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-virtual {p0}, canShare()Z

    move-result v5

    if-eqz v5, :cond_13f

    .line 10565
    const v5, 0x1020035

    invoke-virtual {p0, v5}, onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_13f
    move v1, v6

    .line 10569
    goto/16 :goto_11

    .line 10483
    :sswitch_data_142
    .sparse-switch
        0x10 -> :sswitch_1a
        0x100 -> :sswitch_121
        0x200 -> :sswitch_121
        0x4000 -> :sswitch_85
        0x8000 -> :sswitch_9d
        0x10000 -> :sswitch_b5
        0x20000 -> :sswitch_cd
        0x10000000 -> :sswitch_12a
    .end sparse-switch
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 10814
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 10816
    .local v0, "result":Z
    if-eqz v0, :cond_d

    iget-boolean v1, p0, mhasMultiSelection:Z

    if-eqz v1, :cond_d

    .line 10817
    invoke-virtual {p0}, clearMultiSelection()Z

    .line 10819
    :cond_d
    return v0
.end method

.method public performLongClick()Z
    .registers 5

    .prologue
    .line 10825
    const/4 v1, 0x0

    .line 10826
    .local v1, "handled":Z
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 10828
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 10829
    const/4 v1, 0x1

    .line 10832
    :cond_12
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isUniversalSwitchEnabled()Z

    move-result v2

    if-nez v2, :cond_23

    .line 10833
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, v1}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 10836
    :cond_23
    if-eqz v1, :cond_2e

    .line 10838
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_2e

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 10841
    :cond_2e
    return v1
.end method

.method public performWBEditorAction(I)V
    .registers 24
    .param p1, "actionCode"    # I

    .prologue
    .line 13548
    move-object/from16 v0, p0

    iget-object v3, v0, mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_4c

    const/4 v2, 0x0

    .line 13549
    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    :goto_7
    if-eqz v2, :cond_d2

    .line 13550
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 13552
    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_2d

    .line 13553
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 13554
    const/4 v3, 0x5

    move/from16 v0, p1

    if-eq v0, v3, :cond_28

    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_4b

    .line 13555
    :cond_28
    if-eqz v19, :cond_2d

    .line 13556
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 13569
    :cond_2d
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_64

    .line 13570
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 13571
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_4b

    .line 13572
    move-object/from16 v0, v20

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_53

    move-object/from16 v3, v20

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v3}, requestWritingBuddy()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 13624
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v20    # "v":Landroid/view/View;
    :cond_4b
    :goto_4b
    return-void

    .line 13548
    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    goto :goto_7

    .line 13574
    .restart local v2    # "ict":Landroid/widget/Editor$InputContentType;
    .restart local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v20    # "v":Landroid/view/View;
    :cond_53
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 13575
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 13581
    .end local v20    # "v":Landroid/view/View;
    :cond_64
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_93

    .line 13582
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 13583
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_4b

    .line 13584
    move-object/from16 v0, v20

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_82

    move-object/from16 v3, v20

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v3}, requestWritingBuddy()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 13586
    :cond_82
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 13587
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 13593
    .end local v20    # "v":Landroid/view/View;
    :cond_93
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_af

    .line 13594
    if-eqz v19, :cond_4b

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 13595
    invoke-virtual/range {p0 .. p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_4b

    .line 13601
    :cond_af
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_d2

    invoke-virtual/range {p0 .. p0}, getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_d2

    invoke-virtual/range {p0 .. p0}, getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d2

    invoke-virtual/range {p0 .. p0}, getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 13608
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_d2
    invoke-virtual/range {p0 .. p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .line 13609
    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_4b

    .line 13610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 13611
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 13617
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_4b
.end method

.method public registerForTouchMonitorListener()V
    .registers 5

    .prologue
    .line 12846
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 12847
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_c

    invoke-virtual {p0}, isMultiPenSelectionEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 12856
    :cond_c
    :goto_c
    return-void

    .line 12850
    :cond_d
    sget-object v2, mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    if-eqz v2, :cond_14

    .line 12851
    invoke-virtual {p0}, removeForTouchMonitorListener()V

    .line 12853
    :cond_14
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v0

    .line 12854
    .local v0, "monitor":Landroid/view/ViewRootImpl$MotionEventMonitor;
    new-instance v2, Landroid/widget/TextView$TouchMonitorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    sput-object v2, mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .line 12855
    sget-object v2, mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$MotionEventMonitor;->registerMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V

    goto :goto_c
.end method

.method removeAdjacentSuggestionSpans(I)V
    .registers 9
    .param p1, "pos"    # I

    .prologue
    .line 9139
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_7

    .line 9153
    :cond_6
    return-void

    .line 9140
    :cond_7
    iget-object v5, p0, mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 9142
    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .line 9143
    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    .line 9144
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v1, :cond_6

    .line 9145
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 9146
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 9147
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_27

    if-ne v3, p1, :cond_32

    .line 9148
    :cond_27
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 9149
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 9144
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method removeEasyEditSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5159
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_2b

    .line 5161
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_24

    move-object v1, p1

    .line 5162
    check-cast v1, Landroid/text/Spannable;

    .line 5168
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_b
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/EasyEditSpan;

    .line 5169
    .local v2, "spans":[Landroid/text/style/EasyEditSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v3, v2

    if-ge v0, v3, :cond_2b

    .line 5170
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 5169
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 5164
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/EasyEditSpan;
    :cond_24
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5165
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_b

    .line 5173
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_2b
    return-object p1
.end method

.method public removeForTouchMonitorListener()V
    .registers 4

    .prologue
    .line 12862
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 12863
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_7

    .line 12872
    :cond_6
    :goto_6
    return-void

    .line 12866
    :cond_7
    sget-object v2, mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    if-eqz v2, :cond_6

    .line 12869
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v0

    .line 12870
    .local v0, "monitor":Landroid/view/ViewRootImpl$MotionEventMonitor;
    sget-object v2, mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$MotionEventMonitor;->unregisterMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V

    .line 12871
    const/4 v2, 0x0

    sput-object v2, mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    goto :goto_6
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .registers 8
    .param p1, "spannable"    # Landroid/text/Spannable;

    .prologue
    .line 4631
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4633
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v3, v2

    if-ge v1, v3, :cond_27

    .line 4634
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 4635
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_24

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_24

    .line 4637
    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4633
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4640
    .end local v0    # "flags":I
    :cond_27
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5138
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_2b

    .line 5140
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_24

    move-object v1, p1

    .line 5141
    check-cast v1, Landroid/text/Spannable;

    .line 5147
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_b
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 5148
    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v3, v2

    if-ge v0, v3, :cond_2b

    .line 5149
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 5148
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 5143
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_24
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5144
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_b

    .line 5152
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_2b
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .registers 4
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 9100
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 9101
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 9103
    .local v0, "i":I
    if-ltz v0, :cond_11

    .line 9104
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9107
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public removeTextEffect(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 3745
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->removeTextEffect(I)V

    .line 3746
    return-void
.end method

.method public removeTextStrike()V
    .registers 2

    .prologue
    .line 6693
    const/4 v0, 0x1

    iput-boolean v0, p0, mSkipDrawTextStrike:Z

    .line 6694
    invoke-virtual {p0}, invalidate()V

    .line 6695
    return-void
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 11101
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11102
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 11449
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11450
    return-void
.end method

.method public resetErrorChangedFlag()V
    .registers 3

    .prologue
    .line 7174
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 7175
    :cond_9
    return-void
.end method

.method protected resetResolvedDrawables()V
    .registers 2

    .prologue
    .line 11423
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 11424
    const/4 v0, -0x1

    iput v0, p0, mLastLayoutDirection:I

    .line 11425
    return-void
.end method

.method selectAllText()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 11092
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_a

    .line 11093
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 11095
    :cond_a
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 11096
    .local v0, "length":I
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11097
    if-lez v0, :cond_1b

    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    move v1, v2

    goto :goto_1a
.end method

.method public sendAccessibilityEventInternal(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 10579
    const v0, 0x8000

    if-ne p1, v0, :cond_10

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_10

    .line 10580
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    .line 10586
    :cond_10
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_15

    .line 10590
    :goto_14
    return-void

    .line 10589
    :cond_15
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_14
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    .line 10610
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 10612
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 10613
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 10614
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 10615
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 10616
    invoke-virtual {p0, v0}, sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10617
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 9191
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    .line 9192
    iget-object v2, p0, mListeners:Ljava/util/ArrayList;

    .line 9193
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9194
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 9195
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 9194
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 9198
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_19
    invoke-virtual {p0}, hideErrorIfUnchanged()V

    .line 9199
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .registers 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v7, 0x0

    .line 9160
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_1a

    .line 9161
    iget-object v2, p0, mListeners:Ljava/util/ArrayList;

    .line 9162
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9163
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1a

    .line 9164
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/TextWatcher;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 9163
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 9169
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_1a
    invoke-virtual {p0}, clearMultiSelection()Z

    .line 9171
    iget-boolean v4, p0, mUseDisplayText:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, p0, mSkipUpdateDisplayText:Z

    if-nez v4, :cond_4c

    .line 9172
    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, mTransformed:Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, mDisplayText:Ljava/lang/CharSequence;

    .line 9173
    iget-object v3, p0, mDisplayText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    .line 9175
    .local v3, "sp":Landroid/text/Spannable;
    iget-object v4, p0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_3e

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v4, p0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 9177
    :cond_3e
    iget-object v4, p0, mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    iget-object v5, p0, mDisplayText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const v6, 0x640012

    invoke-interface {v3, v4, v7, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 9180
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_4c
    iput-boolean v7, p0, mSkipUpdateDisplayText:Z

    .line 9183
    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_57

    iget-object v4, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v4, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    .line 9184
    :cond_57
    return-void
.end method

.method public sendToDictionary(Ljava/lang/String;II)V
    .registers 10
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v5, 0x20

    .line 13815
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 13816
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13817
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13818
    const-string v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13819
    const-string v3, "force"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13821
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 13822
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_32

    .line 13823
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 13827
    :cond_32
    return-void
.end method

.method public sendToTranslate(Ljava/lang/String;)V
    .registers 12
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 13832
    const-string v0, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    .line 13833
    .local v0, "ACTION_SEC_TRANSLATE":Ljava/lang/String;
    const-string/jumbo v3, "mode"

    .line 13834
    .local v3, "EXTRA_NAME_MODE":Ljava/lang/String;
    const-string/jumbo v4, "source_text"

    .line 13835
    .local v4, "EXTRA_NAME_SOURCE_TEXT":Ljava/lang/String;
    const-string v1, "auto_start_translation"

    .line 13836
    .local v1, "EXTRA_NAME_AUTO_START":Ljava/lang/String;
    const-string v2, "client_id"

    .line 13837
    .local v2, "EXTRA_NAME_CLIENT_ID":Ljava/lang/String;
    const-string/jumbo v5, "viewer"

    .line 13839
    .local v5, "EXTRA_VALUE_VIEWER_MODE":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 13840
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13841
    const-string/jumbo v8, "mode"

    const-string/jumbo v9, "viewer"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13842
    const-string/jumbo v8, "source_text"

    invoke-virtual {v7, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13843
    const-string v8, "auto_start_translation"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13844
    const-string v8, "client_id"

    const-string v9, "XGPPDdj5SG"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13845
    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13847
    :try_start_3a
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_41} :catch_42

    .line 13852
    :goto_41
    return-void

    .line 13848
    :catch_42
    move-exception v6

    .line 13849
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "TextView"

    const-string v9, "Translate failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13850
    const-string v8, "TextView"

    const-string v9, "ActivityNotFoundException"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method

.method public setAccessibilitySelection(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 11556
    invoke-virtual {p0}, getAccessibilitySelectionStart()I

    move-result v1

    if-ne v1, p1, :cond_d

    invoke-virtual {p0}, getAccessibilitySelectionEnd()I

    move-result v1

    if-ne v1, p2, :cond_d

    .line 11573
    :goto_c
    return-void

    .line 11563
    :cond_d
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1b

    .line 11564
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 11565
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 11567
    :cond_1b
    invoke-virtual {p0}, getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 11568
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_35

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_35

    .line 11569
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_c

    .line 11571
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_35
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_c
.end method

.method public setAllCaps(Z)V
    .registers 4
    .param p1, "allCaps"    # Z

    .prologue
    .line 8779
    if-eqz p1, :cond_f

    .line 8780
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8784
    :goto_e
    return-void

    .line 8782
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_e
.end method

.method public final setAutoLinkMask(I)V
    .registers 2
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3841
    iput p1, p0, mAutoLinkMask:I

    .line 3842
    return-void
.end method

.method public setBreakStrategy(I)V
    .registers 3
    .param p1, "breakStrategy"    # I

    .prologue
    .line 3403
    iput p1, p0, mBreakStrategy:I

    .line 3404
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 3405
    invoke-direct {p0}, nullLayouts()V

    .line 3406
    invoke-virtual {p0}, requestLayout()V

    .line 3407
    invoke-virtual {p0}, invalidate()V

    .line 3409
    :cond_f
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .registers 4
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2876
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2877
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_f

    .line 2878
    if-eqz v0, :cond_8

    .line 2879
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 2888
    :cond_8
    :goto_8
    invoke-virtual {p0}, invalidate()V

    .line 2889
    invoke-virtual {p0}, requestLayout()V

    .line 2890
    return-void

    .line 2882
    :cond_f
    if-nez v0, :cond_1c

    .line 2883
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2885
    :cond_1c
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_8
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2919
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_f

    .line 2920
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2922
    :cond_f
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 2923
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 2925
    invoke-direct {p0}, applyCompoundDrawableTint()V

    .line 2926
    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 2949
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_f

    .line 2950
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2952
    :cond_f
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2953
    iget-object v0, p0, mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 2955
    invoke-direct {p0}, applyCompoundDrawableTint()V

    .line 2956
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 16
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2445
    iget-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2448
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_27

    .line 2449
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_12

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2450
    :cond_12
    iput-object v8, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2451
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1d

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2452
    :cond_1d
    iput-object v8, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2453
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2454
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2457
    :cond_27
    if-nez p1, :cond_2f

    if-nez p2, :cond_2f

    if-nez p3, :cond_2f

    if-eqz p4, :cond_50

    :cond_2f
    move v2, v6

    .line 2458
    .local v2, "drawables":Z
    :goto_30
    if-nez v2, :cond_7e

    .line 2460
    if-eqz v1, :cond_3a

    .line 2461
    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v6, :cond_52

    .line 2462
    iput-object v8, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2552
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_40

    .line 2553
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 2554
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 2557
    :cond_40
    invoke-virtual {p0}, resetResolvedDrawables()V

    .line 2558
    invoke-virtual {p0}, resolveDrawables()V

    .line 2559
    invoke-direct {p0}, applyCompoundDrawableTint()V

    .line 2560
    invoke-virtual {p0}, invalidate()V

    .line 2561
    invoke-virtual {p0}, requestLayout()V

    .line 2562
    return-void

    .end local v2    # "drawables":Z
    :cond_50
    move v2, v5

    .line 2457
    goto :goto_30

    .line 2466
    .restart local v2    # "drawables":Z
    :cond_52
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v6, v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_57
    if-ltz v3, :cond_6d

    .line 2467
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    if-eqz v6, :cond_66

    .line 2468
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2470
    :cond_66
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v3

    .line 2466
    add-int/lit8 v3, v3, -0x1

    goto :goto_57

    .line 2472
    :cond_6d
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2473
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2474
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2475
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_3a

    .line 2479
    .end local v3    # "i":I
    :cond_7e
    if-nez v1, :cond_8b

    .line 2480
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2483
    :cond_8b
    iget-object v7, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v7, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2485
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    if-eq v7, p1, :cond_a2

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    if-eqz v7, :cond_a2

    .line 2486
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v5

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2488
    :cond_a2
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v7, v5

    .line 2490
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    if-eq v7, p2, :cond_b9

    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    if-eqz v7, :cond_b9

    .line 2491
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2493
    :cond_b9
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v7, v6

    .line 2495
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eq v6, p3, :cond_d0

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eqz v6, :cond_d0

    .line 2496
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2498
    :cond_d0
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p3, v6, v9

    .line 2500
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    if-eq v6, p4, :cond_e7

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    if-eqz v6, :cond_e7

    .line 2501
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2503
    :cond_e7
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v6, v10

    .line 2505
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2508
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v4

    .line 2510
    .local v4, "state":[I
    if-eqz p1, :cond_14f

    .line 2511
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2512
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2513
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2514
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2515
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 2520
    :goto_108
    if-eqz p3, :cond_154

    .line 2521
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2522
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2523
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2524
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2525
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 2530
    :goto_11f
    if-eqz p2, :cond_159

    .line 2531
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2532
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2533
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2534
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2535
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2540
    :goto_136
    if-eqz p4, :cond_15e

    .line 2541
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2542
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2543
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2544
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2545
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_3a

    .line 2517
    :cond_14f
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_108

    .line 2527
    :cond_154
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_11f

    .line 2537
    :cond_159
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_136

    .line 2547
    :cond_15e
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_3a
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 15
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2642
    iget-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2645
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_37

    .line 2646
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v4

    if-eqz v6, :cond_16

    .line 2647
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2649
    :cond_16
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v4

    .line 2650
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    if-eqz v6, :cond_29

    .line 2651
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2653
    :cond_29
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v9

    .line 2654
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2655
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2658
    :cond_37
    if-nez p1, :cond_3f

    if-nez p2, :cond_3f

    if-nez p3, :cond_3f

    if-eqz p4, :cond_57

    :cond_3f
    move v2, v5

    .line 2661
    .local v2, "drawables":Z
    :goto_40
    if-nez v2, :cond_a2

    .line 2663
    if-eqz v1, :cond_4a

    .line 2664
    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v6, :cond_59

    .line 2665
    iput-object v7, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2762
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, resetResolvedDrawables()V

    .line 2763
    invoke-virtual {p0}, resolveDrawables()V

    .line 2764
    invoke-virtual {p0}, invalidate()V

    .line 2765
    invoke-virtual {p0}, requestLayout()V

    .line 2766
    return-void

    .end local v2    # "drawables":Z
    :cond_57
    move v2, v4

    .line 2658
    goto :goto_40

    .line 2669
    .restart local v2    # "drawables":Z
    :cond_59
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_62

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2670
    :cond_62
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2671
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eqz v6, :cond_71

    .line 2672
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2674
    :cond_71
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v5

    .line 2675
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7e

    .line 2676
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2678
    :cond_7e
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2679
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eqz v5, :cond_8d

    .line 2680
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2682
    :cond_8d
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v8

    .line 2683
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2684
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2685
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2686
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_4a

    .line 2690
    :cond_a2
    if-nez v1, :cond_af

    .line 2691
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, mDrawables:Landroid/widget/TextView$Drawables;

    .line 2694
    :cond_af
    iget-object v6, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2696
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v6, p1, :cond_c0

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c0

    .line 2697
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2699
    :cond_c0
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2701
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eq v6, p2, :cond_d5

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    if-eqz v6, :cond_d5

    .line 2702
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2704
    :cond_d5
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v6, v5

    .line 2706
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_e6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e6

    .line 2707
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2709
    :cond_e6
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2711
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eq v5, p4, :cond_fb

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eqz v5, :cond_fb

    .line 2712
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2714
    :cond_fb
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v5, v8

    .line 2716
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2719
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v3

    .line 2721
    .local v3, "state":[I
    if-eqz p1, :cond_163

    .line 2722
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2723
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2724
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2725
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2726
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 2731
    :goto_11c
    if-eqz p3, :cond_168

    .line 2732
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2733
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2734
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2735
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2736
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 2741
    :goto_133
    if-eqz p2, :cond_16d

    .line 2742
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2743
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2744
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2745
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2746
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2751
    :goto_14a
    if-eqz p4, :cond_172

    .line 2752
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2753
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2754
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2755
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2756
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_4a

    .line 2728
    :cond_163
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_11c

    .line 2738
    :cond_168
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_133

    .line 2748
    :cond_16d
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_14a

    .line 2758
    :cond_172
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_4a
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 10
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2789
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 2790
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_23

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_c
    if-eqz p2, :cond_25

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_13
    if-eqz p3, :cond_27

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_19
    if-eqz p4, :cond_1f

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1f
    invoke-virtual {p0, v4, v3, v2, v1}, setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2795
    return-void

    :cond_23
    move-object v4, v1

    .line 2790
    goto :goto_c

    :cond_25
    move-object v3, v1

    goto :goto_13

    :cond_27
    move-object v2, v1

    goto :goto_19
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2814
    if-eqz p1, :cond_e

    .line 2815
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2817
    :cond_e
    if-eqz p3, :cond_1b

    .line 2818
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2820
    :cond_1b
    if-eqz p2, :cond_28

    .line 2821
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2823
    :cond_28
    if-eqz p4, :cond_35

    .line 2824
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2826
    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2827
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2585
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 2586
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_23

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_c
    if-eqz p2, :cond_25

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_13
    if-eqz p3, :cond_27

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_19
    if-eqz p4, :cond_1f

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1f
    invoke-virtual {p0, v4, v3, v2, v1}, setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2590
    return-void

    :cond_23
    move-object v4, v1

    .line 2586
    goto :goto_c

    :cond_25
    move-object v3, v1

    goto :goto_13

    :cond_27
    move-object v2, v1

    goto :goto_19
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2610
    if-eqz p1, :cond_e

    .line 2611
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2613
    :cond_e
    if-eqz p3, :cond_1b

    .line 2614
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2616
    :cond_1b
    if-eqz p2, :cond_28

    .line 2617
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2619
    :cond_28
    if-eqz p4, :cond_35

    .line 2620
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2622
    :cond_35
    invoke-virtual {p0, p1, p2, p3, p4}, setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2623
    return-void
.end method

.method public setCursorColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 12000
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 11465
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11466
    return-void
.end method

.method public setCursorVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8962
    if-eqz p1, :cond_7

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_7

    .line 8974
    :cond_6
    :goto_6
    return-void

    .line 8963
    :cond_7
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 8964
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_6

    .line 8965
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 8966
    invoke-virtual {p0}, invalidate()V

    .line 8968
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    .line 8971
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 8972
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_6
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 10953
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 10954
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 10955
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 10916
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 10917
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 10918
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .registers 3
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    .prologue
    .line 4736
    iput-object p1, p0, mEditableFactory:Landroid/text/Editable$Factory;

    .line 4737
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    .line 4738
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .registers 3
    .param p1, "elegant"    # Z

    .prologue
    .line 3346
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    .line 3347
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 4
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, -0x1

    .line 8855
    iget-object v0, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_d

    .line 8856
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_e

    .line 8857
    iput v1, p0, mEllipsisKeywordStart:I

    .line 8858
    iput v1, p0, mEllipsisKeywordCount:I

    .line 8869
    :cond_d
    :goto_d
    return-void

    .line 8861
    :cond_e
    iput-object p1, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 8863
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_d

    .line 8864
    invoke-direct {p0}, nullLayouts()V

    .line 8865
    invoke-virtual {p0}, requestLayout()V

    .line 8866
    invoke-virtual {p0}, invalidate()V

    goto :goto_d
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;II)V
    .registers 5
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p2, "keywordStart"    # I
    .param p3, "keywordCount"    # I

    .prologue
    .line 8883
    iget-object v0, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_6

    .line 8884
    if-gez p2, :cond_7

    .line 8898
    :cond_6
    :goto_6
    return-void

    .line 8887
    :cond_7
    iput-object p1, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 8888
    iput p2, p0, mEllipsisKeywordStart:I

    .line 8889
    iput p3, p0, mEllipsisKeywordCount:I

    .line 8892
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    .line 8893
    invoke-direct {p0}, nullLayouts()V

    .line 8894
    invoke-virtual {p0}, requestLayout()V

    .line 8895
    invoke-virtual {p0}, invalidate()V

    goto :goto_6
.end method

.method public setEms(I)V
    .registers 3
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4358
    iput p1, p0, mMinWidth:I

    iput p1, p0, mMaxWidth:I

    .line 4359
    const/4 v0, 0x1

    iput v0, p0, mMinWidthMode:I

    iput v0, p0, mMaxWidthMode:I

    .line 4361
    invoke-virtual {p0}, requestLayout()V

    .line 4362
    invoke-virtual {p0}, invalidate()V

    .line 4363
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1873
    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_7

    .line 1901
    :cond_6
    :goto_6
    return-void

    .line 1877
    :cond_7
    if-nez p1, :cond_1d

    .line 1879
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1880
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1881
    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1885
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1887
    if-eqz p1, :cond_2b

    .line 1889
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1890
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2b

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1894
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2b
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_6

    .line 1895
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 1896
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1899
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_6
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 5627
    if-nez p1, :cond_8

    .line 5628
    invoke-virtual {p0, v1, v1}, setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5636
    :goto_7
    return-void

    .line 5630
    :cond_8
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10804e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5633
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5634
    invoke-virtual {p0, p1, v0}, setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5648
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5649
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 5652
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .registers 10
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 7393
    invoke-virtual {p0}, getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 7394
    .local v4, "content":Landroid/text/Editable;
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 7395
    if-nez v4, :cond_32

    .line 7396
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v3}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7426
    :cond_11
    :goto_11
    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    .line 7427
    .local v7, "sp":Landroid/text/Spannable;
    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 7428
    .local v6, "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 7429
    .local v1, "start":I
    if-gez v1, :cond_6f

    const/4 v1, 0x0

    .line 7431
    :cond_20
    :goto_20
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 7432
    .local v2, "end":I
    if-gez v2, :cond_73

    const/4 v2, 0x0

    .line 7434
    :cond_25
    :goto_25
    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7437
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_77

    .line 7438
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 7442
    :goto_31
    return-void

    .line 7398
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v6    # "N":I
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_32
    const/4 v1, 0x0

    .line 7399
    .restart local v1    # "start":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 7401
    .restart local v2    # "end":I
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-ltz v0, :cond_49

    .line 7402
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 7403
    .restart local v6    # "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 7404
    if-le v1, v6, :cond_44

    move v1, v6

    .line 7405
    :cond_44
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 7406
    if-le v2, v6, :cond_49

    move v2, v6

    .line 7409
    .end local v6    # "N":I
    :cond_49
    invoke-static {v4, v1, v2}, removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 7410
    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 7411
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_11

    .line 7413
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_11

    .line 7417
    :cond_69
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_11

    .line 7430
    .end local v2    # "end":I
    .restart local v6    # "N":I
    .restart local v7    # "sp":Landroid/text/Spannable;
    :cond_6f
    if-le v1, v6, :cond_20

    move v1, v6

    goto :goto_20

    .line 7433
    .restart local v2    # "end":I
    :cond_73
    if-le v2, v6, :cond_25

    move v2, v6

    goto :goto_25

    .line 7440
    :cond_77
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_31
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .registers 3
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    .prologue
    .line 7448
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_c

    .line 7449
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 7454
    :cond_c
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 7455
    invoke-virtual {p0}, stopTextActionMode()V

    .line 7456
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 5679
    if-nez p1, :cond_8

    .line 5680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5683
    :cond_8
    iput-object p1, p0, mFilters:[Landroid/text/InputFilter;

    .line 5685
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_17

    .line 5686
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 5688
    :cond_17
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .registers 3
    .param p1, "fontFeatureSettings"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3462
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_1a

    .line 3463
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 3465
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 3466
    invoke-direct {p0}, nullLayouts()V

    .line 3467
    invoke-virtual {p0}, requestLayout()V

    .line 3468
    invoke-virtual {p0}, invalidate()V

    .line 3471
    :cond_1a
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 5656
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 5658
    .local v0, "result":Z
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_d

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    .line 5660
    :cond_d
    invoke-direct {p0}, restartMarqueeIfNeeded()V

    .line 5662
    return v0
.end method

.method public setFreezesText(Z)V
    .registers 2
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4715
    iput-boolean p1, p0, mFreezesText:Z

    .line 4716
    return-void
.end method

.method public setGravity(I)V
    .registers 10
    .param p1, "gravity"    # I

    .prologue
    const v4, 0x800007

    .line 3990
    and-int v0, p1, v4

    if-nez v0, :cond_b

    .line 3991
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 3993
    :cond_b
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_11

    .line 3994
    or-int/lit8 p1, p1, 0x30

    .line 3997
    :cond_11
    const/4 v7, 0x0

    .line 3999
    .local v7, "newLayout":Z
    and-int v0, p1, v4

    iget v3, p0, mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_1a

    .line 4001
    const/4 v7, 0x1

    .line 4004
    :cond_1a
    iget v0, p0, mGravity:I

    if-eq p1, v0, :cond_21

    .line 4005
    invoke-virtual {p0}, invalidate()V

    .line 4008
    :cond_21
    iput p1, p0, mGravity:I

    .line 4010
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4d

    if-eqz v7, :cond_4d

    .line 4012
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 4013
    .local v1, "want":I
    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_4e

    const/4 v2, 0x0

    .line 4015
    .local v2, "hintWant":I
    :goto_34
    sget-object v3, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, mRight:I

    iget v5, p0, mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 4019
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4d
    return-void

    .line 4013
    .restart local v1    # "want":I
    :cond_4e
    iget-object v0, p0, mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_34
.end method

.method public setHeight(I)V
    .registers 3
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4231
    iput p1, p0, mMinimum:I

    iput p1, p0, mMaximum:I

    .line 4232
    const/4 v0, 0x2

    iput v0, p0, mMinMode:I

    iput v0, p0, mMaxMode:I

    .line 4234
    invoke-virtual {p0}, requestLayout()V

    .line 4235
    invoke-virtual {p0}, invalidate()V

    .line 4236
    return-void
.end method

.method public setHighlightColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3589
    iget v0, p0, mHighlightColor:I

    if-eq v0, p1, :cond_9

    .line 3590
    iput p1, p0, mHighlightColor:I

    .line 3591
    invoke-virtual {p0}, invalidate()V

    .line 3593
    :cond_9
    return-void
.end method

.method public final setHint(I)V
    .registers 3
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5108
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_7

    .line 5109
    invoke-virtual {p0, p1}, setStringName(I)V

    .line 5111
    :cond_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setHint(Ljava/lang/CharSequence;)V

    .line 5112
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5080
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mHint:Ljava/lang/CharSequence;

    .line 5082
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_d

    .line 5083
    invoke-virtual {p0, p1}, setStringName(Ljava/lang/CharSequence;)V

    .line 5086
    :cond_d
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_14

    .line 5087
    invoke-direct {p0}, checkForRelayout()V

    .line 5090
    :cond_14
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1f

    .line 5091
    invoke-virtual {p0}, invalidate()V

    .line 5095
    :cond_1f
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_34

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_34

    .line 5096
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 5098
    :cond_34
    return-void
.end method

.method public final setHintTextColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3896
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3897
    invoke-direct {p0}, updateTextColors()V

    .line 3898
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3911
    iput-object p1, p0, mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3912
    invoke-direct {p0}, updateTextColors()V

    .line 3913
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .registers 3
    .param p1, "whether"    # Z

    .prologue
    .line 4064
    iget-boolean v0, p0, mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_13

    .line 4065
    iput-boolean p1, p0, mHorizontallyScrolling:Z

    .line 4067
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    .line 4068
    invoke-direct {p0}, nullLayouts()V

    .line 4069
    invoke-virtual {p0}, requestLayout()V

    .line 4070
    invoke-virtual {p0}, invalidate()V

    .line 4073
    :cond_13
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .registers 3
    .param p1, "hyphenationFrequency"    # I

    .prologue
    .line 3430
    iput p1, p0, mHyphenationFrequency:I

    .line 3431
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_f

    .line 3432
    invoke-direct {p0}, nullLayouts()V

    .line 3433
    invoke-virtual {p0}, requestLayout()V

    .line 3434
    invoke-virtual {p0}, invalidate()V

    .line 3436
    :cond_f
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    .line 5415
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5416
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5417
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 5418
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    .line 5419
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .param p1, "imeOptions"    # I

    .prologue
    .line 5388
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5389
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5390
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    .line 5391
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .registers 3
    .param p1, "includepad"    # Z

    .prologue
    .line 7925
    iget-boolean v0, p0, mIncludePad:Z

    if-eq v0, p1, :cond_13

    .line 7926
    iput-boolean p1, p0, mIncludePad:Z

    .line 7928
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    .line 7929
    invoke-direct {p0}, nullLayouts()V

    .line 7930
    invoke-virtual {p0}, requestLayout()V

    .line 7931
    invoke-virtual {p0}, invalidate()V

    .line 7934
    :cond_13
    return-void
.end method

.method public setInputExtras(I)V
    .registers 5
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5577
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5578
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 5579
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5580
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5581
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 5582
    return-void
.end method

.method public setInputType(I)V
    .registers 13
    .param p1, "type"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5192
    invoke-virtual {p0}, getInputType()I

    move-result v9

    invoke-static {v9}, isPasswordInputType(I)Z

    move-result v5

    .line 5193
    .local v5, "wasPassword":Z
    invoke-virtual {p0}, getInputType()I

    move-result v9

    invoke-static {v9}, isVisiblePasswordInputType(I)Z

    move-result v6

    .line 5194
    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v8}, setInputType(IZ)V

    .line 5195
    invoke-static {p1}, isPasswordInputType(I)Z

    move-result v2

    .line 5196
    .local v2, "isPassword":Z
    invoke-static {p1}, isVisiblePasswordInputType(I)Z

    move-result v3

    .line 5197
    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    .line 5198
    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_5c

    .line 5199
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 5216
    :cond_28
    :goto_28
    invoke-static {p1}, isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_7a

    move v4, v7

    .line 5220
    .local v4, "singleLine":Z
    :goto_2f
    iget-boolean v9, p0, mSingleLine:Z

    if-ne v9, v4, :cond_35

    if-eqz v0, :cond_3b

    .line 5223
    :cond_35
    if-nez v2, :cond_38

    move v8, v7

    :cond_38
    invoke-direct {p0, v4, v8, v7}, applySingleLine(ZZZ)V

    .line 5226
    :cond_3b
    invoke-virtual {p0}, isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_49

    .line 5227
    iget-object v7, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, mText:Ljava/lang/CharSequence;

    .line 5231
    :cond_49
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 5232
    invoke-direct {p0, p1}, logLetterMode(I)V

    .line 5235
    :cond_52
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 5236
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_5b

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5237
    :cond_5b
    return-void

    .line 5202
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_5c
    if-eqz v3, :cond_68

    .line 5203
    iget-object v9, p0, mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_28

    .line 5204
    const/4 v0, 0x1

    goto :goto_28

    .line 5208
    :cond_68
    if-nez v5, :cond_6c

    if-eqz v6, :cond_28

    .line 5210
    :cond_6c
    const/4 v9, 0x0

    invoke-direct {p0, v9, v10, v10}, setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 5211
    iget-object v9, p0, mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_28

    .line 5212
    const/4 v0, 0x1

    goto :goto_28

    :cond_7a
    move v4, v8

    .line 5216
    goto :goto_2f
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .registers 6
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 2092
    invoke-direct {p0, p1}, setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 2093
    invoke-direct {p0}, fixFocusableAndClickableSettings()V

    .line 2095
    if-eqz p1, :cond_2d

    .line 2096
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 2098
    :try_start_b
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    iget-object v3, p0, mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_17
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_b .. :try_end_17} :catch_26

    .line 2104
    :goto_17
    iget-boolean v2, p0, mSingleLine:Z

    invoke-direct {p0, v2}, setInputTypeSingleLine(Z)V

    .line 2109
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2110
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_25

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2111
    :cond_25
    return-void

    .line 2099
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_26
    move-exception v0

    .line 2100
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_17

    .line 2106
    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_2d
    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1c

    iget-object v2, p0, mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_1c
.end method

.method public setLetterSpacing(F)V
    .registers 3
    .param p1, "letterSpacing"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3371
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1c

    .line 3372
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 3374
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1c

    .line 3375
    invoke-direct {p0}, nullLayouts()V

    .line 3376
    invoke-virtual {p0}, requestLayout()V

    .line 3377
    invoke-virtual {p0}, invalidate()V

    .line 3380
    :cond_1c
    return-void
.end method

.method public setLineSpacing(FF)V
    .registers 4
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 4394
    iget v0, p0, mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    .line 4395
    :cond_c
    iput p1, p0, mSpacingAdd:F

    .line 4396
    iput p2, p0, mSpacingMult:F

    .line 4398
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1d

    .line 4399
    invoke-direct {p0}, nullLayouts()V

    .line 4400
    invoke-virtual {p0}, requestLayout()V

    .line 4401
    invoke-virtual {p0}, invalidate()V

    .line 4404
    :cond_1d
    return-void
.end method

.method public setLines(I)V
    .registers 3
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4212
    iput p1, p0, mMinimum:I

    iput p1, p0, mMaximum:I

    .line 4213
    const/4 v0, 0x1

    iput v0, p0, mMinMode:I

    iput v0, p0, mMaxMode:I

    .line 4215
    invoke-virtual {p0}, requestLayout()V

    .line 4216
    invoke-virtual {p0}, invalidate()V

    .line 4217
    return-void
.end method

.method public final setLinkTextColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3949
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 3950
    invoke-direct {p0}, updateTextColors()V

    .line 3951
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3964
    iput-object p1, p0, mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 3965
    invoke-direct {p0}, updateTextColors()V

    .line 3966
    return-void
.end method

.method public final setLinksClickable(Z)V
    .registers 2
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3854
    iput-boolean p1, p0, mLinksClickable:Z

    .line 3855
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .registers 2
    .param p1, "marqueeLimit"    # I

    .prologue
    .line 8909
    iput p1, p0, mMarqueeRepeatLimit:I

    .line 8910
    return-void
.end method

.method public setMaxEms(I)V
    .registers 3
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4299
    iput p1, p0, mMaxWidth:I

    .line 4300
    const/4 v0, 0x1

    iput v0, p0, mMaxWidthMode:I

    .line 4302
    invoke-virtual {p0}, requestLayout()V

    .line 4303
    invoke-virtual {p0}, invalidate()V

    .line 4304
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4183
    iput p1, p0, mMaximum:I

    .line 4184
    const/4 v0, 0x2

    iput v0, p0, mMaxMode:I

    .line 4186
    invoke-virtual {p0}, requestLayout()V

    .line 4187
    invoke-virtual {p0}, invalidate()V

    .line 4188
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4154
    iput p1, p0, mMaximum:I

    .line 4155
    const/4 v0, 0x1

    iput v0, p0, mMaxMode:I

    .line 4157
    invoke-virtual {p0}, requestLayout()V

    .line 4158
    invoke-virtual {p0}, invalidate()V

    .line 4159
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4326
    iput p1, p0, mMaxWidth:I

    .line 4327
    const/4 v0, 0x2

    iput v0, p0, mMaxWidthMode:I

    .line 4329
    invoke-virtual {p0}, requestLayout()V

    .line 4330
    invoke-virtual {p0}, invalidate()V

    .line 4331
    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4245
    iput p1, p0, mMinWidth:I

    .line 4246
    const/4 v0, 0x1

    iput v0, p0, mMinWidthMode:I

    .line 4248
    invoke-virtual {p0}, requestLayout()V

    .line 4249
    invoke-virtual {p0}, invalidate()V

    .line 4250
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4126
    iput p1, p0, mMinimum:I

    .line 4127
    const/4 v0, 0x2

    iput v0, p0, mMinMode:I

    .line 4129
    invoke-virtual {p0}, requestLayout()V

    .line 4130
    invoke-virtual {p0}, invalidate()V

    .line 4131
    return-void
.end method

.method public setMinLines(I)V
    .registers 3
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4098
    iput p1, p0, mMinimum:I

    .line 4099
    const/4 v0, 0x1

    iput v0, p0, mMinMode:I

    .line 4101
    invoke-virtual {p0}, requestLayout()V

    .line 4102
    invoke-virtual {p0}, invalidate()V

    .line 4103
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4272
    iput p1, p0, mMinWidth:I

    .line 4273
    const/4 v0, 0x2

    iput v0, p0, mMinWidthMode:I

    .line 4275
    invoke-virtual {p0}, requestLayout()V

    .line 4276
    invoke-virtual {p0}, invalidate()V

    .line 4277
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    .prologue
    .line 2147
    iget-object v0, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1f

    .line 2148
    iput-object p1, p0, mMovement:Landroid/text/method/MovementMethod;

    .line 2150
    if-eqz p1, :cond_13

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_13

    .line 2151
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    .line 2154
    :cond_13
    invoke-direct {p0}, fixFocusableAndClickableSettings()V

    .line 2158
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 2160
    :cond_1f
    return-void
.end method

.method public setMyanmarEncoding(I)V
    .registers 4
    .param p1, "myanmarEncoding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3511
    packed-switch p1, :pswitch_data_1c

    .line 3520
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_AUTO:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    .line 3523
    :goto_a
    return-void

    .line 3513
    :pswitch_b
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    goto :goto_a

    .line 3516
    :pswitch_13
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    goto :goto_a

    .line 3511
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V
    .registers 3
    .param p1, "myanmarEncoding"    # Landroid/graphics/Paint$MyanmarEncoding;

    .prologue
    .line 3492
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;

    move-result-object v0

    if-eq p1, v0, :cond_1a

    .line 3493
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    .line 3495
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 3496
    invoke-direct {p0}, nullLayouts()V

    .line 3497
    invoke-virtual {p0}, requestLayout()V

    .line 3498
    invoke-virtual {p0}, invalidate()V

    .line 3501
    :cond_1a
    return-void
.end method

.method public setNewActionPopupMenu(IZ)V
    .registers 6
    .param p1, "menuId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 13397
    packed-switch p1, :pswitch_data_32

    .line 13411
    :pswitch_3
    const-string v0, "TextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnSupported menuID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13414
    :goto_25
    return-void

    .line 13399
    :pswitch_26
    iput-boolean p2, p0, mEnableClipboard:Z

    goto :goto_25

    .line 13402
    :pswitch_29
    iput-boolean p2, p0, mEnableShare:Z

    goto :goto_25

    .line 13405
    :pswitch_2c
    iput-boolean p2, p0, mEnableWebSearch:Z

    goto :goto_25

    .line 13408
    :pswitch_2f
    iput-boolean p2, p0, mEnableDictionary:Z

    goto :goto_25

    .line 13397
    :pswitch_data_32
    .packed-switch 0x5
        :pswitch_26
        :pswitch_3
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
    .end packed-switch
.end method

.method public setOnDragResult(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 11316
    iput-boolean p1, p0, mOnDragResult:Z

    .line 11317
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 5452
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5453
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5454
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 5455
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3016
    iget v0, p0, mPaddingLeft:I

    if-ne p1, v0, :cond_10

    iget v0, p0, mPaddingRight:I

    if-ne p3, v0, :cond_10

    iget v0, p0, mPaddingTop:I

    if-ne p2, v0, :cond_10

    iget v0, p0, mPaddingBottom:I

    if-eq p4, v0, :cond_13

    .line 3020
    :cond_10
    invoke-direct {p0}, nullLayouts()V

    .line 3024
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 3025
    invoke-virtual {p0}, invalidate()V

    .line 3026
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3030
    invoke-virtual {p0}, getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_14

    iget v0, p0, mPaddingTop:I

    if-ne p2, v0, :cond_14

    iget v0, p0, mPaddingBottom:I

    if-eq p4, v0, :cond_17

    .line 3034
    :cond_14
    invoke-direct {p0}, nullLayouts()V

    .line 3038
    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 3039
    invoke-virtual {p0}, invalidate()V

    .line 3040
    return-void
.end method

.method public setPaintFlags(I)V
    .registers 3
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4046
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 4047
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 4049
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 4050
    invoke-direct {p0}, nullLayouts()V

    .line 4051
    invoke-virtual {p0}, requestLayout()V

    .line 4052
    invoke-virtual {p0}, invalidate()V

    .line 4055
    :cond_1a
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 5549
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5550
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5551
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 5552
    return-void
.end method

.method public setRawInputType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 5284
    if-nez p1, :cond_7

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_7

    .line 5292
    :cond_6
    :goto_6
    return-void

    .line 5285
    :cond_7
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 5286
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    .line 5289
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5290
    invoke-direct {p0, p1}, logLetterMode(I)V

    goto :goto_6
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .registers 2
    .param p1, "s"    # Landroid/widget/Scroller;

    .prologue
    .line 9903
    iput-object p1, p0, mScroller:Landroid/widget/Scroller;

    .line 9904
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .registers 4
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8944
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 8945
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 8947
    if-eqz p1, :cond_16

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_16

    .line 8948
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 8950
    :cond_16
    return-void
.end method

.method public setSelected(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 9490
    if-ne v0, p1, :cond_7

    :goto_3
    invoke-virtual {p0, v0}, setSelected(Z)V

    .line 9491
    return-void

    .line 9490
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setSelected(Z)V
    .registers 5
    .param p1, "selected"    # Z

    .prologue
    .line 9495
    invoke-virtual {p0}, isSelected()Z

    move-result v0

    .line 9497
    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 9499
    if-eq p1, v0, :cond_14

    iget-object v1, p0, mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_14

    .line 9500
    if-eqz p1, :cond_15

    .line 9501
    invoke-direct {p0}, startMarquee()V

    .line 9506
    :cond_14
    :goto_14
    return-void

    .line 9503
    :cond_15
    invoke-direct {p0}, stopMarquee()V

    goto :goto_14
.end method

.method public setShadowLayer(FFFI)V
    .registers 6
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 3643
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 3645
    iput p1, p0, mShadowRadius:F

    .line 3646
    iput p2, p0, mShadowDx:F

    .line 3647
    iput p3, p0, mShadowDy:F

    .line 3648
    iput p4, p0, mShadowColor:I

    .line 3651
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_16

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 3652
    :cond_16
    invoke-virtual {p0}, invalidate()V

    .line 3653
    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .registers 3
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3613
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 3614
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 3615
    return-void
.end method

.method public setSingleLine()V
    .registers 2

    .prologue
    .line 8763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setSingleLine(Z)V

    .line 8764
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3
    .param p1, "singleLine"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 8800
    invoke-direct {p0, p1}, setInputTypeSingleLine(Z)V

    .line 8801
    invoke-direct {p0, p1, v0, v0}, applySingleLine(ZZZ)V

    .line 8802
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .registers 6
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 11457
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 11458
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .registers 3
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    .prologue
    .line 4744
    iput-object p1, p0, mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 4745
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    .line 4746
    return-void
.end method

.method public setStrikeAnimationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 6672
    iput-boolean p1, p0, mTextStrikeThroughEnabled:Z

    .line 6673
    return-void
.end method

.method public final setStringName(I)V
    .registers 3
    .param p1, "resid"    # I

    .prologue
    .line 5066
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_12

    .line 5067
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mStringName:Ljava/lang/CharSequence;

    .line 5069
    :cond_12
    return-void
.end method

.method public final setStringName(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5054
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_16

    .line 5055
    iget-boolean v1, p0, fromResLock:Z

    if-nez v1, :cond_16

    .line 5056
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 5057
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, mStringName:Ljava/lang/CharSequence;

    .line 5060
    .end local v0    # "context":Landroid/content/Context;
    :cond_16
    return-void
.end method

.method public final setText(I)V
    .registers 3
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5037
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_7

    .line 5038
    invoke-virtual {p0, p1}, setStringName(I)V

    .line 5040
    :cond_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    .line 5041
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .registers 4
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 5044
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_7

    .line 5045
    invoke-virtual {p0, p1}, setStringName(I)V

    .line 5047
    :cond_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5048
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4761
    iget-object v0, p0, mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4762
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 4786
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 4788
    iget-object v0, p0, mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_f

    .line 4789
    iget-object v0, p0, mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$202(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 4791
    :cond_f
    return-void
.end method

.method public final setText([CII)V
    .registers 8
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 4986
    const/4 v0, 0x0

    .line 4988
    .local v0, "oldlen":I
    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_28

    .line 4989
    :cond_b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4997
    :cond_28
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4a

    .line 4998
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4999
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 5004
    :goto_37
    iget-object v1, p0, mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_50

    .line 5005
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 5010
    :goto_42
    iget-object v1, p0, mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 5011
    return-void

    .line 5001
    :cond_4a
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_37

    .line 5007
    :cond_50
    iget-object v1, p0, mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_42
.end method

.method public setTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 3066
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, setTextAppearance(Landroid/content/Context;I)V

    .line 3067
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3077
    sget-object v15, Landroid/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3079
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 3081
    .local v10, "textColorHighlight":I
    if-eqz v10, :cond_1a

    .line 3082
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, setHighlightColor(I)V

    .line 3085
    :cond_1a
    const/4 v15, 0x3

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 3086
    .local v9, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_26

    .line 3087
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3090
    :cond_26
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 3091
    .local v13, "textSize":I
    if-eqz v13, :cond_37

    .line 3092
    int-to-float v15, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, setRawTextSize(F)V

    .line 3095
    :cond_37
    const/4 v15, 0x5

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 3097
    .local v11, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_43

    .line 3098
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 3101
    :cond_43
    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 3103
    .local v12, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_4f

    .line 3104
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 3107
    :cond_4f
    const/16 v15, 0xc

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3108
    .local v4, "fontFamily":Ljava/lang/String;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 3109
    .local v14, "typefaceIndex":I
    const/4 v15, 0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 3110
    .local v7, "styleIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v7}, setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 3112
    const/4 v15, 0x7

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 3113
    .local v6, "shadowColor":I
    if-eqz v6, :cond_9a

    .line 3114
    const/16 v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 3115
    .local v2, "dx":F
    const/16 v15, 0x9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 3116
    .local v3, "dy":F
    const/16 v15, 0xa

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 3117
    .local v5, "r":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v3, v6}, setShadowLayer(FFFI)V

    .line 3120
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "r":F
    :cond_9a
    const/16 v15, 0xb

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_b4

    .line 3121
    new-instance v15, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3124
    :cond_b4
    const/16 v15, 0xd

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_cb

    .line 3125
    const/16 v15, 0xd

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, setElegantTextHeight(Z)V

    .line 3129
    :cond_cb
    const/16 v15, 0xe

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_e2

    .line 3130
    const/16 v15, 0xe

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, setLetterSpacing(F)V

    .line 3134
    :cond_e2
    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_f5

    .line 3135
    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, setFontFeatureSettings(Ljava/lang/String;)V

    .line 3139
    :cond_f5
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3140
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3537
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, mTextColor:Landroid/content/res/ColorStateList;

    .line 3538
    invoke-direct {p0}, updateTextColors()V

    .line 3539
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3552
    if-nez p1, :cond_8

    .line 3553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3556
    :cond_8
    iput-object p1, p0, mTextColor:Landroid/content/res/ColorStateList;

    .line 3557
    invoke-direct {p0}, updateTextColors()V

    .line 3558
    return-void
.end method

.method public setTextEffectOpacity(F)V
    .registers 3
    .param p1, "blendingOpacity"    # F

    .prologue
    .line 3756
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextEffectOpacity(F)V

    .line 3757
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .registers 4
    .param p1, "selectable"    # Z

    .prologue
    .line 6220
    if-nez p1, :cond_7

    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_7

    .line 6249
    :cond_6
    :goto_6
    return-void

    .line 6222
    :cond_7
    invoke-direct {p0}, createEditorIfNeeded()V

    .line 6223
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eq v0, p1, :cond_6

    .line 6226
    invoke-virtual {p0}, isMultiPenSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 6227
    invoke-direct {p0}, registerForStylusPenEvent()V

    .line 6236
    :cond_19
    :goto_19
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 6237
    invoke-virtual {p0, p1}, setFocusableInTouchMode(Z)V

    .line 6238
    invoke-virtual {p0, p1}, setFocusable(Z)V

    .line 6239
    invoke-virtual {p0, p1}, setClickable(Z)V

    .line 6240
    invoke-virtual {p0, p1}, setLongClickable(Z)V

    .line 6244
    if-eqz p1, :cond_55

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_2f
    invoke-virtual {p0, v0}, setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6245
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_57

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_38
    invoke-virtual {p0, v1, v0}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6248
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_6

    .line 6229
    :cond_41
    invoke-virtual {p0}, isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    sget v0, sSpenUspLevel:I

    if-lez v0, :cond_19

    .line 6230
    if-eqz p1, :cond_19

    iget-boolean v0, p0, mAttachedWindow:Z

    if-eqz v0, :cond_19

    .line 6231
    invoke-direct {p0}, registerForStylusPenEvent()V

    goto :goto_19

    .line 6244
    :cond_55
    const/4 v0, 0x0

    goto :goto_2f

    .line 6245
    :cond_57
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_38
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4774
    iget-object v0, p0, mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4775
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v6, 0x0

    .line 5020
    invoke-virtual {p0}, getSelectionStart()I

    move-result v2

    .line 5021
    .local v2, "start":I
    invoke-virtual {p0}, getSelectionEnd()I

    move-result v0

    .line 5022
    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5024
    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5026
    if-gez v2, :cond_14

    if-ltz v0, :cond_31

    .line 5027
    :cond_14
    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_31

    .line 5028
    iget-object v3, p0, mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5033
    :cond_31
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 3160
    const/4 v0, 0x1

    iput-boolean v0, p0, mLocaleChanged:Z

    .line 3161
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 3162
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 3
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3285
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1f

    .line 3286
    const/4 v0, 0x1

    iput-boolean v0, p0, mUserSetTextScaleX:Z

    .line 3287
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 3289
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1f

    .line 3290
    invoke-direct {p0}, nullLayouts()V

    .line 3291
    invoke-virtual {p0}, requestLayout()V

    .line 3292
    invoke-virtual {p0}, invalidate()V

    .line 3295
    :cond_1f
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3233
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, setTextSize(IF)V

    .line 3234
    return-void
.end method

.method public setTextSize(IF)V
    .registers 6
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 3246
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 3249
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_16

    .line 3250
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3254
    .local v1, "r":Landroid/content/res/Resources;
    :goto_a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, setRawTextSize(F)V

    .line 3256
    return-void

    .line 3252
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_a
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 6
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .prologue
    const/4 v2, 0x0

    .line 2194
    iget-object v1, p0, mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_6

    .line 2221
    :cond_5
    :goto_5
    return-void

    .line 2199
    :cond_6
    iget-object v1, p0, mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_19

    .line 2200
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_19

    .line 2201
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2205
    :cond_19
    iput-object p1, p0, mTransformation:Landroid/text/method/TransformationMethod;

    .line 2207
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_47

    move-object v0, p1

    .line 2208
    check-cast v0, Landroid/text/method/TransformationMethod2;

    .line 2209
    .local v0, "method2":Landroid/text/method/TransformationMethod2;
    invoke-virtual {p0}, isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_45

    const/4 v1, 0x1

    :goto_2f
    iput-boolean v1, p0, mAllowTransformationLengthChange:Z

    .line 2210
    iget-boolean v1, p0, mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 2215
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_36
    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, setText(Ljava/lang/CharSequence;)V

    .line 2217
    invoke-virtual {p0}, hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2218
    invoke-virtual {p0, v2}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_5

    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_45
    move v1, v2

    .line 2209
    goto :goto_2f

    .line 2212
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_47
    iput-boolean v2, p0, mAllowTransformationLengthChange:Z

    goto :goto_36
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 3311
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1a

    .line 3312
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3314
    iget-object v0, p0, mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1a

    .line 3315
    invoke-direct {p0}, nullLayouts()V

    .line 3316
    invoke-virtual {p0}, requestLayout()V

    .line 3317
    invoke-virtual {p0}, invalidate()V

    .line 3320
    :cond_1a
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 10
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1913
    if-lez p2, :cond_36

    .line 1914
    if-nez p1, :cond_2d

    .line 1915
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1920
    :goto_a
    invoke-virtual {p0, p1}, setTypeface(Landroid/graphics/Typeface;)V

    .line 1922
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 1923
    .local v1, "typefaceStyle":I
    :goto_13
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 1924
    .local v0, "need":I
    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1925
    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_34

    const/high16 v2, -0x41800000    # -0.25f

    :goto_29
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1935
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_2c
    return-void

    .line 1917
    :cond_2d
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_32
    move v1, v2

    .line 1922
    goto :goto_13

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_34
    move v2, v3

    .line 1925
    goto :goto_29

    .line 1927
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_36
    if-eqz p1, :cond_55

    .line 1928
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTypeface with style : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1931
    :cond_55
    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1932
    iget-object v2, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1933
    invoke-virtual {p0, p1}, setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2c
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .registers 5
    .param p1, "undoManager"    # Landroid/content/UndoManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2051
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWBPositionListenerEnalbed(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 13538
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    .line 13539
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setWBPositionListenerEnalbed(Z)V

    .line 13541
    :cond_9
    return-void
.end method

.method public setWBTextBuffer(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 13491
    iput-object p1, p0, mWBTextBuffer:Ljava/lang/CharSequence;

    .line 13492
    return-void
.end method

.method public setWidth(I)V
    .registers 3
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4379
    iput p1, p0, mMinWidth:I

    iput p1, p0, mMaxWidth:I

    .line 4380
    const/4 v0, 0x2

    iput v0, p0, mMinWidthMode:I

    iput v0, p0, mMaxWidthMode:I

    .line 4382
    invoke-virtual {p0}, requestLayout()V

    .line 4383
    invoke-virtual {p0}, invalidate()V

    .line 4384
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .registers 16
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    const/4 v8, 0x1

    .line 9253
    const/4 v5, 0x0

    .line 9254
    .local v5, "selChanged":Z
    const/4 v4, -0x1

    .local v4, "newSelStart":I
    const/4 v3, -0x1

    .line 9256
    .local v3, "newSelEnd":I
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-nez v6, :cond_13c

    const/4 v1, 0x0

    .line 9259
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_9
    const/4 v2, 0x0

    .line 9260
    .local v2, "multiSelChanged":Z
    sget-object v6, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    if-ne p2, v6, :cond_2a

    .line 9261
    const/4 v2, 0x1

    .line 9262
    move v3, p4

    .line 9264
    if-gez p3, :cond_14

    if-ltz p4, :cond_2a

    .line 9265
    :cond_14
    invoke-static {p1}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-direct {p0, v6, p3, p4}, invalidateCursor(III)V

    .line 9266
    invoke-direct {p0}, checkForResize()V

    .line 9267
    invoke-direct {p0}, registerForPreDraw()V

    .line 9268
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_2a

    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->makeBlink()V

    .line 9272
    :cond_2a
    sget-object v6, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    if-ne p2, v6, :cond_3b

    .line 9273
    const/4 v2, 0x1

    .line 9274
    move v4, p4

    .line 9276
    if-gez p3, :cond_34

    if-ltz p4, :cond_3b

    .line 9277
    :cond_34
    invoke-static {p1}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 9278
    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, invalidateCursor(III)V

    .line 9282
    .end local v0    # "end":I
    :cond_3b
    if-eqz v2, :cond_4d

    .line 9283
    iput-boolean v8, p0, mHighlightPathBogus:Z

    .line 9284
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4d

    invoke-virtual {p0}, isFocused()Z

    move-result v6

    if-nez v6, :cond_4d

    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v8, v6, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 9288
    :cond_4d
    sget-object v6, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v6, :cond_6d

    .line 9289
    const/4 v5, 0x1

    .line 9290
    move v3, p4

    .line 9292
    if-gez p3, :cond_57

    if-ltz p4, :cond_6d

    .line 9293
    :cond_57
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-direct {p0, v6, p3, p4}, invalidateCursor(III)V

    .line 9294
    invoke-direct {p0}, checkForResize()V

    .line 9295
    invoke-direct {p0}, registerForPreDraw()V

    .line 9296
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_6d

    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->makeBlink()V

    .line 9300
    :cond_6d
    sget-object v6, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v6, :cond_7e

    .line 9301
    const/4 v5, 0x1

    .line 9302
    move v4, p4

    .line 9304
    if-gez p3, :cond_77

    if-ltz p4, :cond_7e

    .line 9305
    :cond_77
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 9306
    .restart local v0    # "end":I
    invoke-direct {p0, v0, p3, p4}, invalidateCursor(III)V

    .line 9310
    .end local v0    # "end":I
    :cond_7e
    if-eqz v5, :cond_a7

    .line 9311
    iput-boolean v8, p0, mHighlightPathBogus:Z

    .line 9312
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_90

    invoke-virtual {p0}, isFocused()Z

    move-result v6

    if-nez v6, :cond_90

    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    iput-boolean v8, v6, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 9314
    :cond_90
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_a7

    .line 9315
    if-gez v4, :cond_9e

    .line 9316
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 9318
    :cond_9e
    if-gez v3, :cond_a4

    .line 9319
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 9321
    :cond_a4
    invoke-virtual {p0, v4, v3}, onSelectionChanged(II)V

    .line 9325
    :cond_a7
    instance-of v6, p2, Landroid/text/style/UpdateAppearance;

    if-nez v6, :cond_b3

    instance-of v6, p2, Landroid/text/style/ParagraphStyle;

    if-nez v6, :cond_b3

    instance-of v6, p2, Landroid/text/style/CharacterStyle;

    if-eqz v6, :cond_d7

    .line 9327
    :cond_b3
    if-eqz v1, :cond_b9

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_142

    .line 9328
    :cond_b9
    invoke-virtual {p0}, invalidate()V

    .line 9329
    iput-boolean v8, p0, mHighlightPathBogus:Z

    .line 9330
    invoke-direct {p0}, checkForResize()V

    .line 9334
    :goto_c1
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_d7

    .line 9335
    if-ltz p3, :cond_ce

    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    iget-object v7, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v7, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 9336
    :cond_ce
    if-ltz p4, :cond_d7

    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    iget-object v7, p0, mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v7, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 9340
    :cond_d7
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 9341
    iput-boolean v8, p0, mHighlightPathBogus:Z

    .line 9342
    if-eqz v1, :cond_e9

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 9343
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 9346
    :cond_e9
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    if-ltz v6, :cond_f8

    .line 9347
    if-eqz v1, :cond_f5

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_146

    .line 9348
    :cond_f5
    invoke-virtual {p0}, invalidateCursor()V

    .line 9355
    :cond_f8
    :goto_f8
    instance-of v6, p2, Landroid/text/ParcelableSpan;

    if-eqz v6, :cond_122

    .line 9358
    if-eqz v1, :cond_122

    iget-object v6, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v6, :cond_122

    .line 9359
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v6, :cond_149

    .line 9360
    if-ltz p3, :cond_114

    .line 9361
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p3, :cond_10e

    .line 9362
    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9364
    :cond_10e
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p5, :cond_114

    .line 9365
    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9368
    :cond_114
    if-ltz p4, :cond_122

    .line 9369
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p4, :cond_11c

    .line 9370
    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9372
    :cond_11c
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p6, :cond_122

    .line 9373
    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9385
    :cond_122
    :goto_122
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_13b

    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v6, :cond_13b

    if-gez p4, :cond_13b

    instance-of v6, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v6, :cond_13b

    .line 9387
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    .line 9389
    :cond_13b
    return-void

    .line 9256
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v2    # "multiSelChanged":Z
    .restart local p2    # "what":Ljava/lang/Object;
    :cond_13c
    iget-object v6, p0, mEditor:Landroid/widget/Editor;

    iget-object v1, v6, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto/16 :goto_9

    .line 9332
    .restart local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v2    # "multiSelChanged":Z
    :cond_142
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto/16 :goto_c1

    .line 9350
    :cond_146
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_f8

    .line 9380
    :cond_149
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_122
.end method

.method public startDrawStrikeAnimation()V
    .registers 2

    .prologue
    .line 6681
    iget-object v0, p0, mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, mTextStrikeThroughEnabled:Z

    if-eqz v0, :cond_10

    .line 6682
    const/4 v0, 0x0

    iput-boolean v0, p0, mSkipDrawTextStrike:Z

    .line 6683
    iget-object v0, p0, mDrawTextStrikeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6685
    :cond_10
    return-void
.end method

.method public stopCursorBlink(Z)V
    .registers 3
    .param p1, "stop"    # Z

    .prologue
    .line 13528
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    .line 13529
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->stopCursorBlink(Z)V

    .line 13531
    :cond_9
    return-void
.end method

.method protected stopTextActionMode()V
    .registers 2

    .prologue
    .line 10970
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    .line 10971
    iget-object v0, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 10973
    :cond_9
    return-void
.end method

.method textCanBeSelected()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 10148
    iget-object v1, p0, mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_d

    iget-object v1, p0, mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_e

    .line 10149
    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, isTextEditable()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_26
    const/4 v0, 0x1

    goto :goto_d
.end method

.method updateAfterEdit()V
    .registers 4

    .prologue
    .line 9202
    invoke-virtual {p0}, invalidate()V

    .line 9203
    invoke-virtual {p0}, getSelectionStart()I

    move-result v0

    .line 9205
    .local v0, "curs":I
    if-gez v0, :cond_11

    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_14

    .line 9206
    :cond_11
    invoke-direct {p0}, registerForPreDraw()V

    .line 9209
    :cond_14
    invoke-direct {p0}, checkForResize()V

    .line 9211
    if-ltz v0, :cond_28

    .line 9212
    const/4 v1, 0x1

    iput-boolean v1, p0, mHighlightPathBogus:Z

    .line 9213
    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_25

    iget-object v1, p0, mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 9214
    :cond_25
    invoke-virtual {p0, v0}, bringPointIntoView(I)Z

    .line 9216
    :cond_28
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 8
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 6088
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    .line 6089
    .local v4, "verified":Z
    if-nez v4, :cond_17

    iget-object v5, p0, mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_17

    .line 6090
    iget-object v5, p0, mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v3, :cond_17

    aget-object v1, v0, v2

    .line 6091
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-ne p1, v1, :cond_18

    .line 6092
    const/4 v4, 0x1

    .line 6096
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "verified":Z
    :cond_17
    return v4

    .line 6090
    .restart local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "verified":Z
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 11431
    if-eqz p1, :cond_5

    .line 11432
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 11434
    :cond_5
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .registers 3

    .prologue
    .line 8683
    invoke-virtual {p0}, getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .registers 4

    .prologue
    .line 8687
    invoke-virtual {p0}, getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, mScrollY:I

    sub-int v0, v1, v2

    .line 8688
    .local v0, "offset":I
    iget v1, p0, mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_16

    .line 8689
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8691
    :cond_16
    return v0
.end method
