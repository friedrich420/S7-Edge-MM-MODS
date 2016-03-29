.class Lcom/android/settings/activekey/AppList$AppListItem;
.super Ljava/lang/Object;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/activekey/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppListItem"
.end annotation


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "activityname"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/activekey/AppList$AppListItem;->mPackageName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/android/settings/activekey/AppList$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method
