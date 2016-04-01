.class Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
.super Ljava/lang/Object;
.source "MinitBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MinitBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceManager"
.end annotation


# instance fields
.field private mRes:Landroid/content/res/Resources;

.field private mResourceContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MinitBattery;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    move-object v1, p1

    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 377
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    const-string v6, "com.three.minit.batteryresources"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mResourceContext:Landroid/content/Context;

    .line 379
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .line 383
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 381
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mRes:Landroid/content/res/Resources;

    move-object v3, v0

    move-object v4, v1

    const-string v5, "drawable"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    return-object v0
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mRes:Landroid/content/res/Resources;

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mRes:Landroid/content/res/Resources;

    move-object v0, v1

    .end local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    return-object v0
.end method
