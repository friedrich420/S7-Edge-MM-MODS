.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;
.super Landroid/os/AsyncTask;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field final synthetic val$addUsersWhenLocked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p1, [Landroid/util/SparseArray;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "params":[Landroid/util/SparseArray;, "[Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    aget-object v19, p1, v4

    .line 187
    .local v19, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v27

    .line 188
    .local v27, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v27, :cond_1

    .line 189
    const/16 v29, 0x0

    .line 271
    :cond_0
    :goto_0
    return-object v29

    .line 191
    :cond_1
    new-instance v29, Ljava/util/ArrayList;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v29, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    .line 193
    .local v22, "currentId":I
    const/4 v2, 0x0

    .line 194
    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 197
    .local v18, "avatarSize":I
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 198
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v22

    if-ne v0, v4, :cond_3

    const/4 v6, 0x1

    .line 199
    .local v6, "isCurrent":Z
    :goto_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 200
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    .restart local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    goto :goto_1

    .line 198
    .end local v6    # "isCurrent":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 203
    .restart local v6    # "isCurrent":Z
    :cond_4
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 205
    .local v9, "picture":Landroid/graphics/Bitmap;
    if-nez v9, :cond_5

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 208
    if-eqz v9, :cond_5

    .line 209
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-static {v9, v0, v1}, Lcom/android/systemui/BitmapHelper;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 213
    :cond_5
    if-eqz v6, :cond_6

    const/16 v26, 0x0

    .line 214
    .local v26, "index":I
    :goto_3
    new-instance v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    move v11, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 213
    .end local v26    # "index":I
    :cond_6
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v26

    goto :goto_3

    .line 220
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "isCurrent":Z
    .end local v9    # "picture":Landroid/graphics/Bitmap;
    :cond_7
    const/16 v24, 0x1

    .line 234
    .local v24, "enableAddUser":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_add_user"

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v28, 0x1

    .line 236
    .local v28, "ownerCanCreateUsers":Z
    :goto_4
    if-nez v22, :cond_c

    if-eqz v28, :cond_c

    const/16 v23, 0x1

    .line 238
    .local v23, "currentUserCanCreateUsers":Z
    :goto_5
    if-eqz v28, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    if-eqz v4, :cond_d

    const/16 v17, 0x1

    .line 239
    .local v17, "anyoneCanCreateUsers":Z
    :goto_6
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportDualNumber:Z

    if-nez v4, :cond_e

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-nez v4, :cond_e

    if-nez v23, :cond_8

    if-eqz v17, :cond_e

    :cond_8
    if-nez v2, :cond_e

    const/16 v20, 0x1

    .line 241
    .local v20, "canCreateGuest":Z
    :goto_7
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-nez v4, :cond_f

    if-nez v23, :cond_9

    if-eqz v17, :cond_f

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v21, 0x1

    .line 243
    .local v21, "canCreateUser":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    if-nez v4, :cond_10

    const/16 v16, 0x1

    .line 245
    .local v16, "createIsRestricted":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 246
    if-nez v2, :cond_11

    .line 247
    if-eqz v20, :cond_a

    .line 248
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v21, :cond_0

    .line 266
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZ)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 234
    .end local v16    # "createIsRestricted":Z
    .end local v17    # "anyoneCanCreateUsers":Z
    .end local v20    # "canCreateGuest":Z
    .end local v21    # "canCreateUser":Z
    .end local v23    # "currentUserCanCreateUsers":Z
    .end local v28    # "ownerCanCreateUsers":Z
    :cond_b
    const/16 v28, 0x0

    goto :goto_4

    .line 236
    .restart local v28    # "ownerCanCreateUsers":Z
    :cond_c
    const/16 v23, 0x0

    goto :goto_5

    .line 238
    .restart local v23    # "currentUserCanCreateUsers":Z
    :cond_d
    const/16 v17, 0x0

    goto :goto_6

    .line 239
    .restart local v17    # "anyoneCanCreateUsers":Z
    :cond_e
    const/16 v20, 0x0

    goto :goto_7

    .line 241
    .restart local v20    # "canCreateGuest":Z
    :cond_f
    const/16 v21, 0x0

    goto :goto_8

    .line 243
    .restart local v21    # "canCreateUser":Z
    :cond_10
    const/16 v16, 0x0

    goto :goto_9

    .line 253
    .restart local v16    # "createIsRestricted":Z
    :cond_11
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v4, :cond_12

    const/16 v26, 0x0

    .line 260
    .restart local v26    # "index":I
    :goto_b
    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a

    .line 253
    .end local v26    # "index":I
    :cond_12
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v26

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "userRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # setter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$302(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->notifyAdapters()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 280
    :cond_0
    return-void
.end method
