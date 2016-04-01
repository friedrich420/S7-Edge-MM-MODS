.class public Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodSubtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSubtypeBuilder"
.end annotation


# instance fields
.field private mIsAsciiCapable:Z

.field private mIsAuxiliary:Z

.field private mOverridesImplicitlyEnabledSubtype:Z

.field private mSubtypeExtraValue:Ljava/lang/String;

.field private mSubtypeIconResId:I

.field private mSubtypeId:I

.field private mSubtypeLocale:Ljava/lang/String;

.field private mSubtypeMode:Ljava/lang/String;

.field private mSubtypeNameResId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v0, p0, mIsAuxiliary:Z

    .line 116
    iput-boolean v0, p0, mOverridesImplicitlyEnabledSubtype:Z

    .line 128
    iput-boolean v0, p0, mIsAsciiCapable:Z

    .line 137
    iput v0, p0, mSubtypeIconResId:I

    .line 149
    iput v0, p0, mSubtypeNameResId:I

    .line 162
    iput v0, p0, mSubtypeId:I

    .line 171
    const-string v0, ""

    iput-object v0, p0, mSubtypeLocale:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, mSubtypeMode:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, mSubtypeExtraValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget v0, p0, mSubtypeNameResId:I

    return v0
.end method

.method static synthetic access$102(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, mSubtypeNameResId:I

    return p1
.end method

.method static synthetic access$200(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget v0, p0, mSubtypeIconResId:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, mSubtypeIconResId:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget-object v0, p0, mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, mSubtypeLocale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget-object v0, p0, mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, mSubtypeMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget-object v0, p0, mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, mSubtypeExtraValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget-boolean v0, p0, mIsAuxiliary:Z

    return v0
.end method

.method static synthetic access$602(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, mIsAuxiliary:Z

    return p1
.end method

.method static synthetic access$700(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget-boolean v0, p0, mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method static synthetic access$702(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, mOverridesImplicitlyEnabledSubtype:Z

    return p1
.end method

.method static synthetic access$800(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget v0, p0, mSubtypeId:I

    return v0
.end method

.method static synthetic access$802(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, mSubtypeId:I

    return p1
.end method

.method static synthetic access$900(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .prologue
    .line 87
    iget-boolean v0, p0, mIsAsciiCapable:Z

    return v0
.end method

.method static synthetic access$902(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, mIsAsciiCapable:Z

    return p1
.end method


# virtual methods
.method public build()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .prologue
    .line 196
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype$1;)V

    return-object v0
.end method

.method public setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "isAsciiCapable"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, mIsAsciiCapable:Z

    .line 126
    return-object p0
.end method

.method public setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "isAuxiliary"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mIsAuxiliary:Z

    .line 100
    return-object p0
.end method

.method public setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "overridesImplicitlyEnabledSubtype"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, mOverridesImplicitlyEnabledSubtype:Z

    .line 114
    return-object p0
.end method

.method public setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "subtypeExtraValue"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_4

    const-string p1, ""

    .end local p1    # "subtypeExtraValue":Ljava/lang/String;
    :cond_4
    iput-object p1, p0, mSubtypeExtraValue:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "subtypeIconResId"    # I

    .prologue
    .line 134
    iput p1, p0, mSubtypeIconResId:I

    .line 135
    return-object p0
.end method

.method public setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "subtypeId"    # I

    .prologue
    .line 159
    iput p1, p0, mSubtypeId:I

    .line 160
    return-object p0
.end method

.method public setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "subtypeLocale"    # Ljava/lang/String;

    .prologue
    .line 168
    if-nez p1, :cond_4

    const-string p1, ""

    .end local p1    # "subtypeLocale":Ljava/lang/String;
    :cond_4
    iput-object p1, p0, mSubtypeLocale:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "subtypeMode"    # Ljava/lang/String;

    .prologue
    .line 177
    if-nez p1, :cond_4

    const-string p1, ""

    .end local p1    # "subtypeMode":Ljava/lang/String;
    :cond_4
    iput-object p1, p0, mSubtypeMode:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .registers 2
    .param p1, "subtypeNameResId"    # I

    .prologue
    .line 146
    iput p1, p0, mSubtypeNameResId:I

    .line 147
    return-object p0
.end method
