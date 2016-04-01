.class public Lcom/android/internal/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iput v0, p0, mIconId:I

    .line 1030
    iput v0, p0, mIconAttrId:I

    .line 1053
    iput-boolean v0, p0, mViewSpacingSpecified:Z

    .line 1057
    const/4 v0, -0x1

    iput v0, p0, mCheckedItem:I

    .line 1065
    iput-boolean v1, p0, mRecycleOnMeasure:Z

    .line 1081
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1082
    iput-boolean v1, p0, mCancelable:Z

    .line 1083
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 1084
    return-void
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .registers 12
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1147
    iget-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/android/internal/app/AlertController;->mListLayout:I
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->access$900(Lcom/android/internal/app/AlertController;)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/AlertController$RecycleListView;

    .line 1151
    .local v6, "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    iget-boolean v1, p0, mIsMultiChoice:Z

    if-eqz v1, :cond_6a

    .line 1152
    iget-object v1, p0, mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_5d

    .line 1153
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams$1;

    iget-object v2, p0, mContext:Landroid/content/Context;

    # getter for: Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->access$1000(Lcom/android/internal/app/AlertController;)I

    move-result v3

    iget-object v5, p0, mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AlertController$AlertParams$1;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V

    .line 1213
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_28
    iget-object v1, p0, mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_31

    .line 1214
    iget-object v1, p0, mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1220
    :cond_31
    # setter for: Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/android/internal/app/AlertController;->access$1302(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1221
    iget v1, p0, mCheckedItem:I

    # setter for: Lcom/android/internal/app/AlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/android/internal/app/AlertController;->access$1402(Lcom/android/internal/app/AlertController;I)I

    .line 1223
    iget-object v1, p0, mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a2

    .line 1224
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AlertController$AlertParams$3;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1247
    :cond_45
    :goto_45
    iget-object v1, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4e

    .line 1248
    iget-object v1, p0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1251
    :cond_4e
    iget-boolean v1, p0, mIsSingleChoice:Z

    if-eqz v1, :cond_af

    .line 1252
    invoke-virtual {v6, v9}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1256
    :cond_55
    :goto_55
    iget-boolean v1, p0, mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1257
    # setter for: Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/android/internal/app/AlertController;->access$1502(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1258
    return-void

    .line 1169
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5d
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams$2;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$2;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_28

    .line 1197
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_6a
    iget-boolean v1, p0, mIsSingleChoice:Z

    if-eqz v1, :cond_8c

    .line 1198
    # getter for: Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->access$1100(Lcom/android/internal/app/AlertController;)I

    move-result v2

    .line 1203
    .local v2, "layout":I
    :goto_72
    iget-object v1, p0, mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_91

    .line 1204
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_28

    .line 1200
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_8c
    # getter for: Lcom/android/internal/app/AlertController;->mListItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->access$1200(Lcom/android/internal/app/AlertController;)I

    move-result v2

    .restart local v2    # "layout":I
    goto :goto_72

    .line 1206
    :cond_91
    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_98

    .line 1207
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_28

    .line 1209
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_98
    new-instance v0, Lcom/android/internal/app/AlertController$CheckedItemAdapter;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_28

    .line 1233
    .end local v2    # "layout":I
    :cond_a2
    iget-object v1, p0, mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_45

    .line 1234
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/android/internal/app/AlertController$AlertParams$4;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_45

    .line 1253
    :cond_af
    iget-boolean v1, p0, mIsMultiChoice:Z

    if-eqz v1, :cond_55

    .line 1254
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_55
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .registers 8
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    const/4 v3, 0x0

    .line 1087
    iget-object v0, p0, mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_65

    .line 1088
    iget-object v0, p0, mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1103
    :cond_a
    :goto_a
    iget-object v0, p0, mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    .line 1104
    iget-object v0, p0, mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1106
    :cond_13
    iget-object v0, p0, mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 1107
    const/4 v0, -0x1

    iget-object v1, p0, mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1110
    :cond_1f
    iget-object v0, p0, mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    .line 1111
    const/4 v0, -0x2

    iget-object v1, p0, mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1114
    :cond_2b
    iget-object v0, p0, mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_37

    .line 1115
    const/4 v0, -0x3

    iget-object v1, p0, mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1118
    :cond_37
    iget-boolean v0, p0, mForceInverseBackground:Z

    if-eqz v0, :cond_3f

    .line 1119
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1123
    :cond_3f
    iget-object v0, p0, mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_4b

    iget-object v0, p0, mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4b

    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4e

    .line 1124
    :cond_4b
    invoke-direct {p0, p1}, createListView(Lcom/android/internal/app/AlertController;)V

    .line 1126
    :cond_4e
    iget-object v0, p0, mView:Landroid/view/View;

    if-eqz v0, :cond_95

    .line 1127
    iget-boolean v0, p0, mViewSpacingSpecified:Z

    if-eqz v0, :cond_8f

    .line 1128
    iget-object v1, p0, mView:Landroid/view/View;

    iget v2, p0, mViewSpacingLeft:I

    iget v3, p0, mViewSpacingTop:I

    iget v4, p0, mViewSpacingRight:I

    iget v5, p0, mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 1144
    :cond_64
    :goto_64
    return-void

    .line 1090
    :cond_65
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6e

    .line 1091
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1093
    :cond_6e
    iget-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_77

    .line 1094
    iget-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    :cond_77
    iget v0, p0, mIconId:I

    if-eqz v0, :cond_80

    .line 1097
    iget v0, p0, mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1099
    :cond_80
    iget v0, p0, mIconAttrId:I

    if-eqz v0, :cond_a

    .line 1100
    iget v0, p0, mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    goto/16 :goto_a

    .line 1131
    :cond_8f
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_64

    .line 1133
    :cond_95
    iget v0, p0, mViewLayoutResId:I

    if-eqz v0, :cond_64

    .line 1134
    iget v0, p0, mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(I)V

    goto :goto_64
.end method
