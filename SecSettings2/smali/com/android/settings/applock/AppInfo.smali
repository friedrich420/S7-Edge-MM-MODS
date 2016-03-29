.class public Lcom/android/settings/applock/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public locked:I

.field public mainActivity:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applock/AppInfo;->appName:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applock/AppInfo;->packageName:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applock/AppInfo;->mainActivity:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applock/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
