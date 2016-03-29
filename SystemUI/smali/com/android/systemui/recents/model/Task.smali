.class public Lcom/android/systemui/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/Task$TaskKey;,
        Lcom/android/systemui/recents/model/Task$ComponentNameKey;,
        Lcom/android/systemui/recents/model/Task$TaskCallbacks;
    }
.end annotation


# instance fields
.field public activityIcon:Landroid/graphics/drawable/Drawable;

.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public activityLabel:Ljava/lang/String;

.field public applicationIcon:Landroid/graphics/drawable/Drawable;

.field public colorPrimary:I

.field public contentDescription:Ljava/lang/String;

.field public displayId:I

.field public fullscreen:Z

.field public group:Lcom/android/systemui/recents/model/TaskGrouping;

.field public icon:Landroid/graphics/Bitmap;

.field public iconFilename:Ljava/lang/String;

.field public isActive:Z

.field public isLaunchTarget:Z

.field public isMultiWindowVisible:Z

.field public isPrivateMode:Z

.field public key:Lcom/android/systemui/recents/model/Task$TaskKey;

.field public lockToTaskEnabled:Z

.field public lockToThisTask:Z

.field mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

.field public multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field public taskAffiliation:I

.field public taskAffiliationColor:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public useLightOnPrimaryColor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZZLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/pm/ActivityInfo;ZILcom/samsung/android/dualscreen/TaskInfo;ZZ)V
    .locals 5
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "isActive"    # Z
    .param p3, "taskAffiliation"    # I
    .param p4, "taskAffiliationColor"    # I
    .param p5, "activityTitle"    # Ljava/lang/String;
    .param p6, "contentDescription"    # Ljava/lang/String;
    .param p7, "activityIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "colorPrimary"    # I
    .param p9, "lockToThisTask"    # Z
    .param p10, "lockToTaskEnabled"    # Z
    .param p11, "icon"    # Landroid/graphics/Bitmap;
    .param p12, "iconFilename"    # Ljava/lang/String;
    .param p13, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p14, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p15, "isMultiWindowVisible"    # Z
    .param p16, "displayId"    # I
    .param p17, "taskInfo"    # Lcom/samsung/android/dualscreen/TaskInfo;
    .param p18, "isPrivateMode"    # Z
    .param p19, "fullscreen"    # Z

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 196
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq p3, v3, :cond_0

    const/4 v2, 0x1

    .line 197
    .local v2, "isInAffiliationGroup":Z
    :goto_0
    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    .line 198
    .local v1, "hasAffiliationGroupColor":Z
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 199
    iput p3, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    .line 200
    iput p4, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    .line 201
    iput-object p5, p0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 202
    iput-object p6, p0, Lcom/android/systemui/recents/model/Task;->contentDescription:Ljava/lang/String;

    .line 203
    iput-object p7, p0, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 204
    if-eqz v1, :cond_2

    .end local p4    # "taskAffiliationColor":I
    :goto_2
    iput p4, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 205
    iget v3, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->computeContrastBetweenColors(II)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 207
    iput-boolean p2, p0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    .line 208
    iput-boolean p9, p0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 209
    iput-boolean p10, p0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    .line 210
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/Bitmap;

    .line 211
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->iconFilename:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 216
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 217
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    .line 227
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    .line 228
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->fullscreen:Z

    .line 230
    return-void

    .line 196
    .end local v1    # "hasAffiliationGroupColor":Z
    .end local v2    # "isInAffiliationGroup":Z
    .restart local p4    # "taskAffiliationColor":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 197
    .restart local v2    # "isInAffiliationGroup":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1    # "hasAffiliationGroupColor":Z
    :cond_2
    move p4, p8

    .line 204
    goto :goto_2

    .line 205
    .end local p4    # "taskAffiliationColor":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "o"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 234
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 235
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    .line 236
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    .line 237
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    .line 238
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->contentDescription:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 240
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 241
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 242
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isActive:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    .line 243
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 244
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    .line 248
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 249
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 250
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    .line 260
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    .line 262
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 306
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 307
    .local v0, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method public isTaskLocked(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "lockComponentName":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->isLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 335
    .end local v0    # "lockComponentName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "applicationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 287
    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 288
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataLoaded()V

    .line 292
    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultThumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "defaultApplicationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 296
    iput-object p2, p0, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    .line 297
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 298
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    .line 301
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->mCb:Lcom/android/systemui/recents/model/Task$TaskCallbacks;

    .line 267
    return-void
.end method

.method public setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 271
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This task is already assigned to a group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 275
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    const-string v0, "no group"

    .line 313
    .local v0, "groupAffiliation":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    iget v1, v1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
