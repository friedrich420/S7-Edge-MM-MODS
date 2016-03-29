.class public Lcom/android/systemui/recents/RecentsResizeTaskDialog;
.super Landroid/app/DialogFragment;
.source "RecentsResizeTaskDialog.java"


# static fields
.field private static final BUTTON_DEFINITIONS:[[I


# instance fields
.field private mBounds:[Landroid/graphics/Rect;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mRecentsActivity:Lcom/android/systemui/recents/RecentsActivity;

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mResizeTaskDialogContent:Landroid/view/View;

.field private mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTasks:[Lcom/android/systemui/recents/model/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->BUTTON_DEFINITIONS:[[I

    return-void

    :array_0
    .array-data 4
        0x7f0e01f7
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x7f0e01f8
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x7f0e01f4
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x7f0e01f5
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x7f0e01f9
        0x5
    .end array-data

    :array_5
    .array-data 4
        0x7f0e01fa
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x7f0e01fb
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x7f0e01fc
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x7f0e01f6
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/app/FragmentManager;Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 7
    .param p1, "mgr"    # Landroid/app/FragmentManager;
    .param p2, "activity"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/recents/model/Task;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 81
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsActivity:Lcom/android/systemui/recents/RecentsActivity;

    .line 82
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsResizeTaskDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsResizeTaskDialog;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->placeTasks(I)V

    return-void
.end method

.method private createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v5, 0x0

    .line 96
    const v3, 0x7f0d01e0

    invoke-virtual {p3, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 97
    const v3, 0x7f040070

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    .line 100
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->BUTTON_DEFINITIONS:[[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    sget-object v4, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->BUTTON_DEFINITIONS:[[I

    aget-object v4, v4, v2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 102
    .local v1, "b":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 103
    sget-object v3, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->BUTTON_DEFINITIONS:[[I

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget v0, v3, v4

    .line 104
    .local v0, "action":I
    new-instance v3, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$1;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .end local v0    # "action":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "b":Landroid/widget/Button;
    :cond_1
    const v3, 0x7f0d000f

    new-instance v4, Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog$2;-><init>(Lcom/android/systemui/recents/RecentsResizeTaskDialog;)V

    invoke-virtual {p3, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mResizeTaskDialogContent:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    return-void
.end method

.method private placeTasks(I)V
    .locals 10
    .param p1, "arrangement"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 126
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    if-eqz v1, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    aput-object v9, v3, v1

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    .line 133
    .local v0, "additionalTasks":I
    packed-switch p1, :pswitch_data_0

    .line 204
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->getNextTaskOrTopTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    aput-object v4, v3, v1

    .line 207
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    aget-object v4, v4, v7

    if-ne v3, v4, :cond_2

    .line 208
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    aput-object v9, v3, v1

    .line 204
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 135
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 136
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 137
    const/4 v0, 0x1

    .line 138
    goto :goto_1

    .line 140
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 141
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 142
    const/4 v0, 0x1

    .line 143
    goto :goto_1

    .line 145
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 146
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 147
    const/4 v0, 0x1

    .line 148
    goto :goto_1

    .line 150
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 151
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 152
    const/4 v0, 0x1

    .line 153
    goto/16 :goto_1

    .line 155
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 156
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 157
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 158
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 159
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 160
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 161
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 162
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 163
    const/4 v0, 0x3

    .line 164
    goto/16 :goto_1

    .line 166
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 167
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 168
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 169
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 170
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 171
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 172
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 173
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 174
    const/4 v0, 0x3

    .line 175
    goto/16 :goto_1

    .line 177
    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 178
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 179
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 180
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 181
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 182
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 183
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 184
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 185
    const/4 v0, 0x3

    .line 186
    goto/16 :goto_1

    .line 188
    :pswitch_7
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 189
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 190
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 191
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 192
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 193
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 194
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 195
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 196
    const/4 v0, 0x3

    .line 197
    goto/16 :goto_1

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->dismiss()V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsActivity:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeWithoutTransitionAnimation()V

    .line 217
    move v1, v0

    :goto_3
    if-ltz v1, :cond_5

    .line 218
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    .line 219
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mBounds:[Landroid/graphics/Rect;

    aget-object v5, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resizeTask(ILandroid/graphics/Rect;)V

    .line 217
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 225
    :cond_5
    move v1, v0

    :goto_4
    if-ltz v1, :cond_7

    .line 226
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    aget-object v3, v3, v1

    if-eqz v3, :cond_6

    .line 227
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->launchTask(Lcom/android/systemui/recents/model/Task;)Z

    .line 225
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 230
    :cond_7
    return-void

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 235
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 236
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, v1, v2, v0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->createResizeTaskDialog(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/app/AlertDialog$Builder;)V

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method showResizeTaskDialog(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 2
    .param p1, "mainTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "rv"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mTasks:[Lcom/android/systemui/recents/model/Task;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 88
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "RecentsResizeTaskDialog"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    return-void
.end method
