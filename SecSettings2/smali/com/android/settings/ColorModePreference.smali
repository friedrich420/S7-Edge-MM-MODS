.class public Lcom/android/settings/ColorModePreference;
.super Landroid/preference/SwitchPreference;
.source "ColorModePreference.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ColorModePreference$1;,
        Lcom/android/settings/ColorModePreference$ColorTransformDescription;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ColorModePreference$ColorTransformDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 50
    return-void
.end method


# virtual methods
.method public getTransformsCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ColorModePreference;->updateCurrentAndSupported()V

    .line 69
    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/ColorModePreference;->updateCurrentAndSupported()V

    .line 76
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 80
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x1

    .line 135
    iget-object v1, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    .line 138
    .local v0, "desc":Lcom/android/settings/ColorModePreference$ColorTransformDescription;
    iget-object v1, p0, Lcom/android/settings/ColorModePreference;->mDisplay:Landroid/view/Display;

    # getter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->transform:Landroid/view/Display$ColorTransform;
    invoke-static {v0}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$400(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)Landroid/view/Display$ColorTransform;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/Display;->requestColorTransform(Landroid/view/Display$ColorTransform;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ColorModePreference;->mCurrentIndex:I

    .line 142
    .end local v0    # "desc":Lcom/android/settings/ColorModePreference$ColorTransformDescription;
    :cond_0
    return v2

    .line 136
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startListening()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 58
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 62
    return-void
.end method

.method public updateCurrentAndSupported()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v11, 0x1

    .line 83
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v10, v12}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ColorModePreference;->mDisplay:Landroid/view/Display;

    .line 85
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 88
    .local v6, "resources":Landroid/content/res/Resources;
    const v10, 0x1070030

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 90
    .local v9, "transforms":[I
    const v10, 0x7f110109

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "titles":[Ljava/lang/String;
    const v10, 0x7f11010a

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "descriptions":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v9

    if-ge v3, v10, :cond_1

    .line 94
    aget v10, v9, v3

    if-eq v10, v14, :cond_0

    if-eq v3, v11, :cond_0

    .line 95
    new-instance v1, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;-><init>(Lcom/android/settings/ColorModePreference$1;)V

    .line 96
    .local v1, "desc":Lcom/android/settings/ColorModePreference$ColorTransformDescription;
    aget v10, v9, v3

    # setter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->colorTransform:I
    invoke-static {v1, v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$102(Lcom/android/settings/ColorModePreference$ColorTransformDescription;I)I

    .line 97
    aget-object v10, v8, v3

    # setter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->title:Ljava/lang/String;
    invoke-static {v1, v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$202(Lcom/android/settings/ColorModePreference$ColorTransformDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    aget-object v10, v2, v3

    # setter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->summary:Ljava/lang/String;
    invoke-static {v1, v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$302(Lcom/android/settings/ColorModePreference$ColorTransformDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v1    # "desc":Lcom/android/settings/ColorModePreference$ColorTransformDescription;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getSupportedColorTransforms()[Landroid/view/Display$ColorTransform;

    move-result-object v7

    .line 104
    .local v7, "supportedColorTransforms":[Landroid/view/Display$ColorTransform;
    const/4 v3, 0x0

    :goto_1
    array-length v10, v7

    if-ge v3, v10, :cond_4

    .line 105
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 106
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    # getter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->colorTransform:I
    invoke-static {v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$100(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)I

    move-result v10

    aget-object v13, v7, v3

    invoke-virtual {v13}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v13

    if-ne v10, v13, :cond_3

    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    # getter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->transform:Landroid/view/Display$ColorTransform;
    invoke-static {v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$400(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)Landroid/view/Display$ColorTransform;

    move-result-object v10

    if-nez v10, :cond_3

    .line 109
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    aget-object v13, v7, v3

    # setter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->transform:Landroid/view/Display$ColorTransform;
    invoke-static {v10, v13}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$402(Lcom/android/settings/ColorModePreference$ColorTransformDescription;Landroid/view/Display$ColorTransform;)Landroid/view/Display$ColorTransform;

    .line 104
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 115
    .end local v5    # "j":I
    :cond_4
    const/4 v3, 0x0

    :goto_3
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 116
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    # getter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->transform:Landroid/view/Display$ColorTransform;
    invoke-static {v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$400(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)Landroid/view/Display$ColorTransform;

    move-result-object v10

    if-nez v10, :cond_5

    .line 117
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v4

    .line 115
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 121
    :cond_6
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getColorTransform()Landroid/view/Display$ColorTransform;

    move-result-object v0

    .line 122
    .local v0, "currentTransform":Landroid/view/Display$ColorTransform;
    iput v14, p0, Lcom/android/settings/ColorModePreference;->mCurrentIndex:I

    .line 123
    const/4 v3, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 124
    iget-object v10, p0, Lcom/android/settings/ColorModePreference;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ColorModePreference$ColorTransformDescription;

    # getter for: Lcom/android/settings/ColorModePreference$ColorTransformDescription;->colorTransform:I
    invoke-static {v10}, Lcom/android/settings/ColorModePreference$ColorTransformDescription;->access$100(Lcom/android/settings/ColorModePreference$ColorTransformDescription;)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/Display$ColorTransform;->getColorTransform()I

    move-result v13

    if-ne v10, v13, :cond_8

    .line 125
    iput v3, p0, Lcom/android/settings/ColorModePreference;->mCurrentIndex:I

    .line 129
    :cond_7
    iget v10, p0, Lcom/android/settings/ColorModePreference;->mCurrentIndex:I

    if-ne v10, v11, :cond_9

    move v10, v11

    :goto_5
    invoke-virtual {p0, v10}, Lcom/android/settings/ColorModePreference;->setChecked(Z)V

    .line 130
    return-void

    .line 123
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v10, v12

    .line 129
    goto :goto_5
.end method
