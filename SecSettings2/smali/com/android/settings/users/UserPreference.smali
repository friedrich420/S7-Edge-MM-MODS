.class public Lcom/android/settings/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# static fields
.field public static final SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/users/UserPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mPref:Landroid/preference/Preference;

.field private mSerialNumber:I

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/android/settings/users/UserPreference$1;

    invoke-direct {v0}, Lcom/android/settings/users/UserPreference$1;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "userId"    # I
    .param p4, "settingsListener"    # Landroid/view/View$OnClickListener;
    .param p5, "deleteListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 55
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 67
    const v0, 0x7f040199

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setLayoutResource(I)V

    .line 73
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 74
    iput-object p4, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 75
    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 76
    iput-object p0, p0, Lcom/android/settings/users/UserPreference;->mPref:Landroid/preference/Preference;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserPreference;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserPreference;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/UserPreference;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private getSerialNumber()I
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    .line 139
    :goto_0
    return v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    .line 130
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    .line 131
    const v0, 0x7fffffff

    goto :goto_0

    .line 132
    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    .line 133
    const v0, 0x7ffffffe

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 137
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    goto :goto_0

    .line 139
    :cond_3
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    goto :goto_0
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 81
    const v6, 0x7f0d0408

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "container":Landroid/view/View;
    new-instance v6, Lcom/android/settings/users/UserPreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings/users/UserPreference$2;-><init>(Lcom/android/settings/users/UserPreference;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 95
    .local v5, "um":Landroid/os/UserManager;
    const v6, 0x7f0d040a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "deleteLayout":Landroid/view/View;
    const v6, 0x7f0d040b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "deleteView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 98
    iget-object v6, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_2

    const-string v6, "no_remove_user"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 100
    iget-object v6, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_0
    :goto_0
    const v6, 0x7f0d040c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 109
    .local v3, "manageLayout":Landroid/view/View;
    const v6, 0x7f0d0409

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 110
    .local v4, "manageView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 111
    iget-object v6, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_3

    .line 112
    iget-object v6, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 124
    return-void

    .line 104
    .end local v3    # "manageLayout":Landroid/view/View;
    .end local v4    # "manageView":Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    .restart local v3    # "manageLayout":Landroid/view/View;
    .restart local v4    # "manageView":Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
