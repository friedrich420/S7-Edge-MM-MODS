.class final Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataModelPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2

    .prologue
    .line 1124
    iput-object p1, p0, this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/widget/ActivityChooserModel$1;

    .prologue
    .line 1124
    invoke-direct {p0, p1}, <init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .registers 3

    .prologue
    .line 1128
    iget-object v0, p0, this$0:Landroid/widget/ActivityChooserModel;

    const/4 v1, 0x1

    # setter for: Landroid/widget/ActivityChooserModel;->mReloadActivities:Z
    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->access$702(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1129
    return-void
.end method
