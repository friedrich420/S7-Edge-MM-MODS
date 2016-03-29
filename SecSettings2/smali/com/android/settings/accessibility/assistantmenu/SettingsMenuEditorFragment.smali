.class public Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.super Landroid/app/Fragment;
.source "SettingsMenuEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;,
        Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;,
        Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    }
.end annotation


# static fields
.field public static assistantmenuSettingsPrefs:Ljava/lang/String;

.field public static keyLowerItemTotalCount:Ljava/lang/String;

.field public static keyMenuItemTotalCount:Ljava/lang/String;


# instance fields
.field private GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

.field private GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

.field private StatusBarHeight:I

.field public frag_Act:Landroid/app/Activity;

.field private lin_Layout:Landroid/widget/LinearLayout;

.field private mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

.field private mControlBar:Landroid/widget/ImageView;

.field private final mControlbartouchListener:Landroid/view/View$OnTouchListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

.field private mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

.field private mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

.field private mGridViewItemListLower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridViewItemListUpper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridViewLower:Landroid/widget/GridView;

.field private mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

.field private final mGridViewTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mGridViewUpper:Landroid/widget/GridView;

.field private mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

.field private mIconImgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIconStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTranslateAnimationEnd:Z

.field private mIsWidgetVisible:Z

.field private mIsdetectedUpper:Z

.field private mLowerDetectedItemId:I

.field private mNewLowerDetectedItemId:I

.field private mNewUpperDetectedItemId:I

.field private mNotPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreDetectedItemId:I

.field private mPrePositionX:F

.field private mPrePositionY:F

.field private mPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReset:Landroid/view/MenuItem;

.field private mResources:Landroid/content/res/Resources;

.field private mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

.field private mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

.field private final mSettingsMenuEditorHandler:Landroid/os/Handler;

.field private mTotalLowerItemCount:I

.field private mTotalUpperItemCount:I

.field mTouchSyncObj:Ljava/lang/Object;

.field private mTranslateAnimation:Landroid/view/animation/Animation;

.field mTranslateLowerGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

.field mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

.field private mUpperDetectedItemId:I

.field private mWdigetItemBmpX:F

.field private mWdigetItemBmpY:F

.field private mWidgetImageView:Landroid/widget/ImageView;

.field private mWidgetItemBmp:Landroid/graphics/Bitmap;

.field private mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "menuItemTotalCount"

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    .line 96
    const-string v0, "lowerItemTotalCount"

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    .line 112
    const-string v0, "AM_SETTINGS_PREFS"

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->assistantmenuSettingsPrefs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 60
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    .line 68
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    .line 70
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    .line 72
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    .line 74
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    .line 76
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    .line 78
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    .line 80
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 88
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 90
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    .line 92
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    .line 100
    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 102
    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 104
    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    .line 106
    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    .line 108
    iput-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    .line 110
    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    .line 114
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    .line 117
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    .line 119
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    .line 121
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    .line 123
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    .line 125
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    .line 127
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    .line 129
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    .line 131
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    .line 133
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    .line 135
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    .line 137
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    .line 139
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 141
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 144
    iput-boolean v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    .line 146
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 148
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    .line 150
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    .line 152
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    .line 157
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    .line 165
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 167
    iput-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    .line 179
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_UP:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .line 183
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    .line 368
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 451
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$5;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlbartouchListener:Landroid/view/View$OnTouchListener;

    .line 498
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    .line 521
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateLowerGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    .line 1357
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    return-void
.end method

.method private AfterTranslateAnimationEnd()V
    .locals 3

    .prologue
    .line 487
    const-string v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[c] AfterTranslateAnimationEnd()+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    .line 492
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 493
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 496
    :cond_0
    return-void
.end method

.method private AssignDragItem()V
    .locals 5

    .prologue
    const v4, 0x7f0d0496

    const v3, 0x7f02025c

    const/4 v2, -0x1

    .line 903
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v2, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 910
    :cond_0
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v2, :cond_1

    .line 911
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 917
    :cond_1
    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    .line 919
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 920
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 922
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 924
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V

    .line 925
    return-void
.end method

.method private ChangelayoutByGap(I)V
    .locals 12
    .param p1, "gapY"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const v8, 0x7f0c046b

    const v7, 0x7f0c0466

    .line 729
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    add-int v3, v4, p1

    .line 730
    .local v3, "x":I
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v0

    .line 732
    .local v0, "isPortrait":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 788
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 789
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLowerHeight(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 793
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    return-void

    .line 736
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 740
    :cond_2
    if-ltz p1, :cond_c

    .line 741
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->getCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLine(I)I

    move-result v1

    .line 742
    .local v1, "line":I
    const-string v4, "SettingsMenuEditorFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChangelayoutByGap() line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 744
    const/4 v2, 0x0

    .line 746
    .local v2, "maxHeight":I
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 747
    if-ne v1, v9, :cond_3

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 780
    :goto_1
    if-le v3, v2, :cond_0

    .line 781
    move v3, v2

    goto :goto_0

    .line 750
    :cond_3
    if-ne v1, v10, :cond_4

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0467

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 753
    :cond_4
    if-ne v1, v11, :cond_5

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0468

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 756
    :cond_5
    const/4 v4, 0x4

    if-ne v1, v4, :cond_6

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0469

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 759
    :cond_6
    const/4 v4, 0x5

    if-ne v1, v4, :cond_7

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c046a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 763
    :cond_7
    const-string v4, "SettingsMenuEditorFragment"

    const-string v5, "ChangelayoutByGap else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 766
    :cond_8
    if-ne v1, v9, :cond_9

    .line 767
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 769
    :cond_9
    if-ne v1, v10, :cond_a

    .line 770
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c046c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 772
    :cond_a
    if-ne v1, v11, :cond_b

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c046d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 776
    :cond_b
    const-string v4, "SettingsMenuEditorFragment"

    const-string v5, "ChangelayoutByLine else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 784
    .end local v1    # "line":I
    .end local v2    # "maxHeight":I
    :cond_c
    const-string v4, "SettingsMenuEditorFragment"

    const-string v5, "ChangelayoutByGap else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private ChangelayoutByLine(ZI)V
    .locals 8
    .param p1, "isInitialize"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 798
    const/4 v1, 0x0

    .line 805
    .local v1, "x":I
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->getCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLine(I)I

    move-result v0

    .line 806
    .local v0, "line":I
    const-string v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChangelayoutByLine() line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 810
    if-ne v0, v5, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0466

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 850
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 851
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0465

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 860
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    :goto_1
    return-void

    .line 813
    :cond_1
    if-ne v0, v6, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0467

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 816
    :cond_2
    if-ne v0, v7, :cond_3

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0468

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 819
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0469

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 822
    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 823
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c046a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 826
    :cond_5
    const-string v2, "SettingsMenuEditorFragment"

    const-string v3, "ChangelayoutByLine else"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 830
    :cond_6
    if-ne v0, v5, :cond_7

    .line 831
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c046b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_0

    .line 833
    :cond_7
    if-ne v0, v6, :cond_8

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c046c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_0

    .line 836
    :cond_8
    if-ne v0, v7, :cond_9

    .line 837
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c046d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 839
    if-ne p2, v5, :cond_0

    .line 840
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    goto/16 :goto_0

    .line 843
    :cond_9
    const-string v2, "SettingsMenuEditorFragment"

    const-string v3, "ChangelayoutByLine else"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I
    .locals 23
    .param p1, "gridview"    # Landroid/widget/GridView;
    .param p2, "layoutParams"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 1044
    const/4 v7, -0x1

    .line 1046
    .local v7, "itemIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getWidth()I

    move-result v5

    .line 1047
    .local v5, "gapMin":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1049
    .local v15, "rectWidget":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getWidth()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1054
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1057
    .local v10, "rectItem":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_0

    .line 1058
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1059
    .local v8, "itemView":Landroid/view/View;
    if-nez v8, :cond_1

    .line 1112
    .end local v8    # "itemView":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v18

    add-int v18, v18, v7

    return v18

    .line 1061
    .restart local v8    # "itemView":Landroid/view/View;
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 1062
    .local v9, "loc":[I
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1063
    const/16 v18, 0x0

    aget v13, v9, v18

    .line 1064
    .local v13, "rectItemX":I
    const/16 v18, 0x1

    aget v14, v9, v18

    .line 1076
    .local v14, "rectItemY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    add-int v18, v18, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    add-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v13, v14, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1079
    invoke-static {v15, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1083
    const-string v18, "SettingsMenuEditorFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "FindNearItem()_intersects_ItemIndex: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .line 1086
    .local v16, "rectWidgetCX":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .line 1088
    .local v17, "rectWidgetCY":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    .line 1089
    .local v11, "rectItemCX":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    .line 1093
    .local v12, "rectItemCY":I
    sub-int v18, v16, v11

    sub-int v19, v16, v11

    mul-int v18, v18, v19

    sub-int v19, v17, v12

    sub-int v20, v17, v12

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v4, v0

    .line 1099
    .local v4, "gap":I
    if-le v5, v4, :cond_2

    .line 1100
    move v5, v4

    .line 1101
    move v7, v6

    .line 1057
    .end local v4    # "gap":I
    .end local v11    # "rectItemCX":I
    .end local v12    # "rectItemCY":I
    .end local v16    # "rectWidgetCX":I
    .end local v17    # "rectWidgetCY":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private FindNearItem()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1131
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    .line 1132
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    .line 1134
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->IsLowerGridViewArea()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1136
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    .line 1137
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v1, :cond_3

    .line 1139
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1140
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1141
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1143
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-ne v0, v3, :cond_2

    .line 1145
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1154
    :goto_0
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1184
    :cond_0
    :goto_1
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1239
    :cond_1
    :goto_2
    return-void

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1150
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto :goto_0

    .line 1156
    :cond_3
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    if-ne v0, v3, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1159
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1160
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v3, :cond_4

    .line 1163
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1165
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    goto :goto_1

    .line 1168
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1170
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1172
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1174
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1175
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1177
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto/16 :goto_1

    .line 1187
    :cond_6
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    if-ne v0, v3, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    .line 1190
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    if-eq v0, v3, :cond_9

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v1, :cond_9

    .line 1193
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1194
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1195
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1197
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-ne v0, v3, :cond_8

    .line 1199
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1208
    :goto_3
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1236
    :cond_7
    :goto_4
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    goto/16 :goto_2

    .line 1203
    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1205
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto :goto_3

    .line 1210
    :cond_9
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    if-ne v0, v3, :cond_7

    .line 1212
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1213
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1214
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v3, :cond_a

    .line 1217
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1219
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    goto :goto_4

    .line 1222
    :cond_a
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1224
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1225
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1227
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 1228
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 1230
    :cond_b
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto/16 :goto_4
.end method

.method private GetGridViewLine(I)I
    .locals 4
    .param p1, "gridViewItemCount"    # I

    .prologue
    .line 1321
    const/4 v0, -0x1

    .line 1323
    .local v0, "rowLine":I
    const-string v1, "SettingsMenuEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGridViewLine gridViewItemCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1325
    if-ltz p1, :cond_0

    .line 1326
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    if-gt p1, v1, :cond_1

    .line 1327
    const/4 v0, 0x1

    .line 1353
    :cond_0
    :goto_0
    return v0

    .line 1328
    :cond_1
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_2

    .line 1329
    const/4 v0, 0x2

    goto :goto_0

    .line 1330
    :cond_2
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_3

    .line 1331
    const/4 v0, 0x3

    goto :goto_0

    .line 1332
    :cond_3
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x4

    if-gt p1, v1, :cond_4

    .line 1333
    const/4 v0, 0x4

    goto :goto_0

    .line 1334
    :cond_4
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x5

    if-gt p1, v1, :cond_5

    .line 1335
    const/4 v0, 0x5

    goto :goto_0

    .line 1337
    :cond_5
    const-string v1, "SettingsMenuEditorFragment"

    const-string v2, "GetGridViewLine [GetOrientationState is true] else"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1341
    :cond_6
    if-ltz p1, :cond_0

    .line 1342
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    if-gt p1, v1, :cond_7

    .line 1343
    const/4 v0, 0x1

    goto :goto_0

    .line 1344
    :cond_7
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_8

    .line 1345
    const/4 v0, 0x2

    goto :goto_0

    .line 1346
    :cond_8
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_9

    .line 1347
    const/4 v0, 0x3

    goto :goto_0

    .line 1349
    :cond_9
    const-string v1, "SettingsMenuEditorFragment"

    const-string v2, "GetGridViewLine [GetOrientationState is false] else"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private GetGridViewLowerHeight(I)I
    .locals 3
    .param p1, "gridViewUpperHeight"    # I

    .prologue
    .line 1243
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0465

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private GetOrientationPortraite()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1254
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 1258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private GetWindowSize()V
    .locals 5

    .prologue
    .line 1262
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1263
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1265
    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    .line 1266
    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    .line 1268
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1269
    .local v1, "rectgle":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1270
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1271
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    .line 1273
    return-void
.end method

.method private GridViewScroll(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V
    .locals 2
    .param p1, "direction"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .prologue
    .line 1276
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$SCROLL_MOTION:[I

    invoke-virtual {p1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1286
    :goto_0
    return-void

    .line 1278
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollByOffset(I)V

    goto :goto_0

    .line 1281
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollByOffset(I)V

    goto :goto_0

    .line 1276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private Init()V
    .locals 10

    .prologue
    const/4 v1, -0x2

    const/4 v4, 0x1

    .line 558
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->setHasOptionsMenu(Z)V

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->assistantmenuSettingsPrefs:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->AddOptionalMenuIfNeed(Landroid/content/Context;)Z

    .line 579
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    .line 580
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    .line 588
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    .line 589
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    .line 597
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    .line 600
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    if-ge v7, v0, :cond_4

    .line 601
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 602
    .local v8, "position":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assistant_menu_icon_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 603
    .local v9, "value":Ljava/lang/String;
    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    .line 605
    .local v6, "act":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    if-eqz v9, :cond_2

    .line 606
    invoke-static {v9}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    .line 610
    :goto_1
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_1

    .line 612
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-ne v6, v0, :cond_3

    .line 613
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_3

    .line 600
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    goto :goto_1

    .line 616
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 621
    .end local v6    # "act":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    .end local v8    # "position":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    :goto_3
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    if-ge v7, v0, :cond_8

    .line 622
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 624
    .restart local v8    # "position":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assistant_menu_icon_key00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 625
    .restart local v9    # "value":Ljava/lang/String;
    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    .line 626
    .restart local v6    # "act":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    if-eqz v9, :cond_6

    .line 627
    invoke-static {v9}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    .line 633
    :goto_4
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-ne v6, v0, :cond_7

    .line 634
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_7

    .line 621
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 629
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    goto :goto_4

    .line 637
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 641
    .end local v6    # "act":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    .end local v8    # "position":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 643
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitUI()V

    .line 645
    invoke-direct {p0, v4, v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 647
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const/16 v4, 0x28

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 653
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 654
    return-void
.end method

.method private InitUI()V
    .locals 4

    .prologue
    const v3, 0x7f0401d3

    .line 274
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetWindowSize()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0493

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    .line 277
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 279
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0494

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    .line 280
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0495

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    .line 288
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;-><init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 291
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;-><init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 295
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    new-instance v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$2;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    new-instance v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;-><init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlbartouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private IsLowerGridViewArea()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1116
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 1117
    .local v1, "loc":[I
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1118
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int v2, v4, v5

    .line 1119
    .local v2, "widgetBottomY":I
    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 1121
    .local v0, "gridViewLowerY":I
    if-le v2, v0, :cond_0

    .line 1124
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private IsScrollArea()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1289
    const/4 v4, 0x0

    .line 1290
    .local v4, "result":Z
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 1291
    .local v0, "loc":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1292
    .local v3, "rectWidget":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1293
    .local v2, "rectControlbar":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1294
    .local v1, "rectActionbar":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1295
    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1300
    aget v5, v0, v10

    aget v6, v0, v11

    iget v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    sub-int/2addr v6, v7

    aget v7, v0, v10

    iget-object v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v0, v11

    iget-object v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1303
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsScrollArea"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1304
    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getHeight()I

    move-result v6

    invoke-virtual {v1, v10, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1306
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1307
    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_UP:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .line 1308
    const/4 v4, 0x1

    .line 1316
    :goto_0
    const-string v5, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsScrollArea:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v4

    .line 1309
    :cond_0
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1310
    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_DOWN:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .line 1311
    const/4 v4, 0x1

    goto :goto_0

    .line 1313
    :cond_1
    const-string v5, "SettingsMenuEditorFragment"

    const-string v6, "IsScrollArea : else"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ItemAnimationRun(Landroid/widget/GridView;II)V
    .locals 11
    .param p1, "gridView"    # Landroid/widget/GridView;
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const v8, 0x7f0c0471

    const v7, 0x7f0c046e

    const/4 v6, 0x0

    .line 930
    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 931
    .local v0, "firstVisiblePostion":I
    if-eqz v0, :cond_0

    .line 932
    sub-int/2addr p2, v0

    .line 933
    sub-int/2addr p3, v0

    .line 935
    :cond_0
    const/4 v1, 0x0

    .line 939
    .local v1, "i":I
    if-le p3, p2, :cond_7

    .line 940
    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-gt v1, p3, :cond_e

    .line 942
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 943
    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    rem-int v2, v1, v2

    if-eqz v2, :cond_3

    .line 944
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 970
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 973
    if-ne v1, p3, :cond_2

    .line 974
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 975
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 978
    :cond_1
    iput-boolean v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    .line 979
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 981
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 984
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 985
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 940
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 948
    :cond_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c046f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 956
    :cond_4
    iget v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    rem-int v2, v1, v2

    if-eqz v2, :cond_5

    .line 957
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0470

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 961
    :cond_5
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0470

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 987
    :cond_6
    const-string v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[c] gridview.getChildAt(i) null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 991
    :cond_7
    move v1, p3

    :goto_3
    add-int/lit8 v2, p2, -0x1

    if-gt v1, v2, :cond_e

    .line 993
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 994
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 995
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 1019
    :goto_4
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1022
    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_9

    .line 1023
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1024
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    :cond_8
    iput-boolean v9, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    .line 1028
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1030
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1033
    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1034
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 991
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 999
    :cond_a
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c046f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_4

    .line 1006
    :cond_b
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 1007
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_4

    .line 1011
    :cond_c
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_4

    .line 1036
    :cond_d
    const-string v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[c] gridview.getChildAt(i) null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1041
    :cond_e
    return-void
.end method

.method private MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .locals 5
    .param p1, "act"    # Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    .prologue
    .line 658
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 660
    .local v0, "img":I
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 662
    .local v1, "name":I
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, "strname":Ljava/lang/String;
    new-instance v2, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-direct {v2, v0, p1, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;-><init>(ILcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;Ljava/lang/String;)V

    .line 665
    .local v2, "settingItem":Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    return-object v2
.end method

.method private RemoveWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 890
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    .line 894
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 895
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 898
    :cond_0
    return-void
.end method

.method private ResetSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 688
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 689
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 692
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 693
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 694
    .local v0, "act":Ljava/lang/String;
    const-string v2, "Restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PowerOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-lez v2, :cond_1

    .line 692
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 702
    .end local v0    # "act":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 703
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    .restart local v0    # "act":Ljava/lang/String;
    const-string v2, "Restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "PowerOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 705
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-lez v2, :cond_4

    .line 702
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 708
    :cond_4
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 711
    .end local v0    # "act":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 713
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 714
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 716
    invoke-direct {p0, v4, v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 718
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLowerHeight(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 720
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V

    .line 724
    return-void
.end method

.method private SaveSettings()V
    .locals 6

    .prologue
    .line 671
    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 672
    .local v2, "upperItemSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assistant_menu_icon_key"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 678
    .local v1, "lowerItemSize":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assistant_menu_icon_key00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 684
    return-void
.end method

.method private ShowWidget()V
    .locals 3

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 866
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 868
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 870
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    .line 872
    const-string v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowWidget() mWidgetPointLayoutParams.x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWidgetPointLayoutParams.y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_0
    return-void
.end method

.method private UpdateWidget()V
    .locals 3

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 881
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 882
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    const-string v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateWidget() mWidgetLayoutParams.x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWidgetLayoutParams.y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .param p1, "x1"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GridViewScroll(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AfterTranslateAnimationEnd()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->FindNearItem()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByGap(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    return-void
.end method

.method static synthetic access$316(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    return p1
.end method

.method static synthetic access$516(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->UpdateWidget()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->IsScrollArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public GetIsWidgetVisible()Z
    .locals 1

    .prologue
    .line 1609
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    return v0
.end method

.method public GetLowerDetectedItemId()I
    .locals 1

    .prologue
    .line 1605
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    return v0
.end method

.method public GetTranslateAnimationEnd()Z
    .locals 1

    .prologue
    .line 1597
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    return v0
.end method

.method public GetUpperDetectedItemId()I
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    return v0
.end method

.method public InitResolution()V
    .locals 14

    .prologue
    const/16 v13, 0x400

    const/16 v12, 0x258

    const/4 v11, 0x4

    .line 1619
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1620
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1621
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1622
    .local v2, "heightPixels":I
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1623
    .local v5, "widthPixels":I
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1624
    .local v1, "densityDpi":I
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1625
    .local v0, "density":F
    iget v4, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1626
    .local v4, "scaledDensity":F
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    .line 1627
    .local v6, "xdpi":F
    iget v7, v3, Landroid/util/DisplayMetrics;->ydpi:F

    .line 1649
    .local v7, "ydpi":F
    const-string v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen W x H pixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const-string v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen X x Y dpi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const-string v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "density = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  scaledDensity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  densityDpi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    if-ne v5, v12, :cond_0

    if-eq v2, v13, :cond_1

    :cond_0
    if-ne v5, v13, :cond_2

    if-ne v2, v12, :cond_2

    :cond_1
    const/16 v8, 0xa0

    if-ne v1, v8, :cond_2

    .line 1656
    const-string v8, "SettingsMenuEditorFragment"

    const-string v9, "InitResolution changed for sw599-mdpi"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 1658
    const/4 v8, 0x5

    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    .line 1668
    :goto_0
    return-void

    .line 1659
    :cond_2
    const/16 v8, 0x780

    if-ne v5, v8, :cond_3

    const/16 v8, 0x438

    if-ne v2, v8, :cond_3

    .line 1660
    iput v11, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 1661
    const/16 v8, 0x8

    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    goto :goto_0

    .line 1664
    :cond_3
    const-string v8, "SettingsMenuEditorFragment"

    const-string v9, "InitResolution changed for other device"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iput v11, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 1666
    const/4 v8, 0x6

    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    goto :goto_0
.end method

.method public ItemClick(Landroid/view/View;ILcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "imageMode"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    .prologue
    .line 1361
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1362
    :try_start_0
    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$IMAGE_MODE:[I

    invoke-virtual {p3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 1445
    :cond_0
    :goto_0
    monitor-exit v5

    .line 1446
    :goto_1
    return-void

    .line 1364
    :pswitch_0
    const-string v4, "SettingsMenuEditorFragment"

    const-string v6, "OnItemClickListener - mGridViewUpper"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1370
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_0

    .line 1373
    :cond_1
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    .line 1374
    .local v3, "itemAct":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1379
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 1381
    .local v2, "item":Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1385
    const-string v4, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mGridViewUpper.getFirstVisiblePosition() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mGridViewUpper.getLastVisiblePosition() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v1

    .line 1393
    .local v1, "isPortrait":Z
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 1396
    .local v0, "columnItemCount":I
    :goto_2
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    rem-int/2addr v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 1399
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 1403
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 1409
    :cond_3
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1410
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V

    goto/16 :goto_0

    .line 1445
    .end local v0    # "columnItemCount":I
    .end local v1    # "isPortrait":Z
    .end local v2    # "item":Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .end local v3    # "itemAct":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1393
    .restart local v1    # "isPortrait":Z
    .restart local v2    # "item":Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .restart local v3    # "itemAct":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    goto :goto_2

    .line 1415
    .end local v1    # "isPortrait":Z
    .end local v2    # "item":Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .end local v3    # "itemAct":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :pswitch_1
    const-string v4, "SettingsMenuEditorFragment"

    const-string v6, "OnItemClickListener - mGridViewLower"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le p2, v4, :cond_5

    .line 1420
    const-string v4, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[c] ItemClick: wrong position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    monitor-exit v5

    goto/16 :goto_1

    .line 1424
    :cond_5
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 1425
    .restart local v2    # "item":Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1431
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1435
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    if-eq v4, v6, :cond_6

    .line 1436
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 1439
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ItemLongClick(Landroid/view/View;ILcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "imageMode"    # Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    .prologue
    const/4 v8, 0x1

    .line 1450
    const-string v4, "SettingsMenuEditorFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[c] ItemLongClick()+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1453
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1454
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1456
    :cond_0
    const v4, 0x7f0d0496

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1457
    .local v0, "ItemView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 1458
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1460
    .local v1, "copy":Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    .line 1462
    const/4 v2, 0x0

    .line 1463
    .local v2, "itemAct":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 1464
    .local v3, "loc":[I
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 1466
    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$IMAGE_MODE:[I

    invoke-virtual {p3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 1511
    :goto_0
    if-eqz v2, :cond_1

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2, v4}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    sget-object v4, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2, v4}, Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1513
    :cond_2
    const-string v4, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[c] mGridViewUpperItemLongClickListener() - home/setting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iput p2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    .line 1518
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ShowWidget()V

    .line 1520
    monitor-exit v5

    .line 1521
    return v8

    .line 1468
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v2

    .line 1472
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1473
    iput p2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1474
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1475
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    .line 1476
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iput-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 1478
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    .line 1479
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    .line 1484
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Widgety"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1485
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1520
    .end local v0    # "ItemView":Landroid/view/View;
    .end local v1    # "copy":Landroid/graphics/Bitmap;
    .end local v2    # "itemAct":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    .end local v3    # "loc":[I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1489
    .restart local v0    # "ItemView":Landroid/view/View;
    .restart local v1    # "copy":Landroid/graphics/Bitmap;
    .restart local v2    # "itemAct":Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    .restart local v3    # "loc":[I
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v2

    .line 1493
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1494
    iput p2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1495
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1496
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    .line 1497
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iput-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 1499
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    .line 1503
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public SetOnTouchActionDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    .line 1526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    .line 1527
    return-void
.end method

.method public SetOnTouchActionUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1584
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1585
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    .line 1586
    const-string v0, "SettingsMenuEditorFragment"

    const-string v2, "mGridViewUpperTouchListener_ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    .line 1589
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V

    .line 1590
    const/4 v0, 0x1

    monitor-exit v1

    .line 1593
    :goto_0
    return v0

    .line 1592
    :cond_0
    monitor-exit v1

    .line 1593
    const/4 v0, 0x0

    goto :goto_0

    .line 1592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v3, 0x7f0c0474

    const v2, 0x7f0c0473

    const/4 v1, 0x1

    .line 241
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    .line 245
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetWindowSize()V

    .line 250
    invoke-direct {p0, v1, v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    .line 253
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 271
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 338
    const v0, 0x7f0e15f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mReset:Landroid/view/MenuItem;

    .line 339
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mReset:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 340
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->frag_Act:Landroid/app/Activity;

    .line 206
    const v0, 0x7f0401d2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    .line 207
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->Init()V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 216
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    .line 217
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    .line 218
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    .line 219
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    .line 222
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    .line 223
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    :cond_0
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    .line 228
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 230
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    .line 237
    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 345
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 349
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 365
    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 355
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ResetSettings()V

    .line 356
    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
