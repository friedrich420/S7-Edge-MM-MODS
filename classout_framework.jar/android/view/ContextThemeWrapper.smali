.class public Landroid/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 42
    iput p2, p0, mThemeResource:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, mTheme:Landroid/content/res/Resources$Theme;

    .line 48
    return-void
.end method

.method private initializeTheme()V
    .registers 5

    .prologue
    .line 142
    iget-object v2, p0, mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_28

    const/4 v0, 0x1

    .line 143
    .local v0, "first":Z
    :goto_5
    if-eqz v0, :cond_20

    .line 144
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, mTheme:Landroid/content/res/Resources$Theme;

    .line 145
    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 146
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_20

    .line 147
    iget-object v2, p0, mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 150
    .end local v1    # "theme":Landroid/content/res/Resources$Theme;
    :cond_20
    iget-object v2, p0, mTheme:Landroid/content/res/Resources$Theme;

    iget v3, p0, mThemeResource:I

    invoke-virtual {p0, v2, v3, v0}, onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 151
    return-void

    .line 142
    .end local v0    # "first":Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 66
    iget-object v0, p0, mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_c

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getResources() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_c
    iget-object v0, p0, mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_18

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Override configuration has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_18
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 73
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 77
    iget-object v1, p0, mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_7

    .line 78
    iget-object v1, p0, mResources:Landroid/content/res/Resources;

    .line 86
    :goto_6
    return-object v1

    .line 80
    :cond_7
    iget-object v1, p0, mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_14

    .line 81
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, mResources:Landroid/content/res/Resources;

    .line 82
    iget-object v1, p0, mResources:Landroid/content/res/Resources;

    goto :goto_6

    .line 84
    :cond_14
    iget-object v1, p0, mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, "resc":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, mResources:Landroid/content/res/Resources;

    .line 86
    iget-object v1, p0, mResources:Landroid/content/res/Resources;

    goto :goto_6
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 118
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1a

    .line 119
    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 121
    :cond_1a
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 123
    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, p0, mTheme:Landroid/content/res/Resources$Theme;

    .line 113
    :goto_6
    return-object v0

    .line 109
    :cond_7
    iget v0, p0, mThemeResource:I

    invoke-virtual {p0}, getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, mThemeResource:I

    .line 111
    invoke-direct {p0}, initializeTheme()V

    .line 113
    iget-object v0, p0, mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_6
.end method

.method public getThemeResId()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, mThemeResource:I

    return v0
.end method

.method public invalidateTheme()V
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, mTheme:Landroid/content/res/Resources$Theme;

    .line 168
    invoke-direct {p0}, initializeTheme()V

    .line 169
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 5
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 139
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 157
    if-eqz p1, :cond_e

    .line 158
    invoke-virtual {p0}, getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->setResources(Landroid/content/res/Resources;)V

    .line 160
    iput-object p1, p0, mResources:Landroid/content/res/Resources;

    .line 161
    invoke-virtual {p0}, invalidateTheme()V

    .line 163
    :cond_e
    return-void
.end method

.method public setTheme(I)V
    .registers 3
    .param p1, "resid"    # I

    .prologue
    .line 92
    iget v0, p0, mThemeResource:I

    if-eq v0, p1, :cond_9

    .line 93
    iput p1, p0, mThemeResource:I

    .line 94
    invoke-direct {p0}, initializeTheme()V

    .line 96
    :cond_9
    return-void
.end method
