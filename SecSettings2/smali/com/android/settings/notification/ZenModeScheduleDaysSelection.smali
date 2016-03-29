.class public Lcom/android/settings/notification/ZenModeScheduleDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeScheduleDaysSelection.java"


# static fields
.field public static final DAYS:[I


# instance fields
.field private mDayFormat:Ljava/text/SimpleDateFormat;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private mDaysCheckBox:[Landroid/widget/CheckBox;

.field private mDisableListeners:Z

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "days"    # [I

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "EEEE"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    .line 53
    const/16 v8, 0x8

    new-array v8, v8, [Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    .line 58
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0165

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 61
    .local v3, "hPad":I
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v10, v3, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->addView(Landroid/view/View;)V

    .line 63
    if-eqz p2, :cond_0

    .line 64
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p2

    if-ge v4, v8, :cond_0

    .line 65
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    aget v9, p2, v4

    invoke-virtual {v8, v9, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .end local v4    # "i":I
    :cond_0
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "EEEE"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 71
    invoke-static {p1}, Lcom/android/settings/Utils;->isChinaHKTWLocale(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 72
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "EEE"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 75
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 77
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    sget-object v8, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v8, v8

    if-ge v4, v8, :cond_4

    .line 78
    sget-object v8, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v2, v8, v4

    .line 81
    .local v2, "day":I
    const v8, 0x7f040283

    invoke-virtual {v5, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 83
    .local v7, "mTempLayout":Landroid/widget/LinearLayout;
    const v8, 0x7f0d064c

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 85
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const v8, 0x7f0d064b

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 86
    .local v6, "mFocusLayout":Landroid/widget/LinearLayout;
    new-instance v8, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;

    invoke-direct {v8, p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    if-eqz v4, :cond_2

    .line 94
    invoke-virtual {v0, v12, v2}, Ljava/util/Calendar;->set(II)V

    .line 95
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    new-instance v8, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;

    invoke-direct {v8, p0, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;I)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    :goto_2
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    aput-object v1, v8, v4

    .line 135
    iget-object v8, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 113
    :cond_2
    const v8, 0x7f0e0fce

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setText(I)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v8

    array-length v8, v8

    if-lt v8, v12, :cond_3

    .line 115
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    :cond_3
    new-instance v8, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;

    invoke-direct {v8, p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    .line 137
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "day":I
    .end local v6    # "mFocusLayout":Landroid/widget/LinearLayout;
    .end local v7    # "mTempLayout":Landroid/widget/LinearLayout;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleDaysSelection;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getDays()[I
    .locals 5

    .prologue
    .line 140
    new-instance v2, Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 141
    .local v2, "rt":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 142
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 143
    .local v0, "day":I
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 146
    .end local v0    # "day":I
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 147
    .local v3, "rta":[I
    const/4 v1, 0x0

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 148
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 151
    return-object v3
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 0
    .param p1, "days"    # [I

    .prologue
    .line 156
    return-void
.end method
