.class Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
.super Ljava/lang/Object;
.source "UninstallMultipleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PInfo"
.end annotation


# instance fields
.field private appname:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private pname:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->appname:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->pname:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->versionName:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->versionCode:I

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->versionCode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->appname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->appname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->pname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->pname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->versionName:Ljava/lang/String;

    return-object p1
.end method
