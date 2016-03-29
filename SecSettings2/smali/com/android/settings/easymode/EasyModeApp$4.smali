.class Lcom/android/settings/easymode/EasyModeApp$4;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeApp;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 996
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-static {}, Lcom/android/settings/Utils;->isDashboardTab()Z

    move-result v13

    # setter for: Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z
    invoke-static {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->access$202(Lcom/android/settings/easymode/EasyModeApp;Z)Z

    .line 998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->bEnableTab:Z
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$200(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 999
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v12

    check-cast v12, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v12}, Lcom/android/settings/SettingsActivity;->setRedrawTab()V

    .line 1002
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->goToPersonal()V
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$300(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v12

    const-string v13, "easy_mode_switch"

    invoke-virtual {v12, v13}, Lcom/android/settings/easymode/EasyModeEnabler;->getEasyModeAppState(Ljava/lang/String;)I

    move-result v9

    .line 1004
    .local v9, "mPrevModeState":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v5, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$500(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1006
    .local v4, "currentDefaultHome":Landroid/content/ComponentName;
    const-string v12, "EasyModeApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "KKK onClick mPrevModeState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mModeState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v14}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v12, "EasyModeApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "KKK onClick isDefaultEasyLauncher : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v14}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$800(Lcom/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "easy_mode_select_all"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->easy_mode_select_all:Landroid/preference/SwitchPreference;
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$900(Lcom/android/settings/easymode/EasyModeApp;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1010
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const-string v13, "activity"

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->access$1000(Lcom/android/settings/easymode/EasyModeApp;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1011
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v7

    .line 1012
    .local v7, "isWindowPinned":Z
    const-string v12, "EasyModeApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isWindowPinned : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v12

    if-eq v9, v12, :cond_2

    if-eqz v7, :cond_2

    .line 1014
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->showPinWindowToast()V
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$1100(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 1085
    :goto_1
    return-void

    .line 1008
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v7    # "isWindowPinned":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1018
    .restart local v2    # "am":Landroid/app/ActivityManager;
    .restart local v7    # "isWindowPinned":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->checkLeastOnEasyMode()Z
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$1200(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1019
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f0e11a3

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1020
    :cond_3
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 1021
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->setStandardFont()V

    .line 1022
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v13, 0x0

    # setter for: Lcom/android/settings/easymode/EasyModeApp;->selected_value:I
    invoke-static {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->access$1302(Lcom/android/settings/easymode/EasyModeApp;I)I

    .line 1024
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mEasyModeEnabler:Lcom/android/settings/easymode/EasyModeEnabler;
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$400(Lcom/android/settings/easymode/EasyModeApp;)Lcom/android/settings/easymode/EasyModeEnabler;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeEnabler;->startStandardMode()V

    .line 1025
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v13, 0x0

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V
    invoke-static {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->access$1400(Lcom/android/settings/easymode/EasyModeApp;Z)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto :goto_1

    .line 1027
    :cond_4
    const/4 v12, 0x1

    if-ne v9, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v12

    if-nez v12, :cond_9

    .line 1028
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1029
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1030
    .local v3, "conf":Landroid/content/res/Configuration;
    iget v12, v3, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 1031
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v13}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e0fc1

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e119b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1037
    .end local v3    # "conf":Landroid/content/res/Configuration;
    :cond_5
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1038
    .local v10, "mWpopup":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "multiwindow_facade"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1039
    .local v8, "mMultiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v8, :cond_6

    .line 1040
    const/16 v12, 0xa

    const/4 v13, 0x6

    invoke-virtual {v8, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v11

    .line 1041
    .local v11, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 1042
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1043
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1048
    .end local v6    # "i":I
    .end local v11    # "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_6
    const-string v12, "EasyModeApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "KKK onCreateOptionsMenu mWpopup : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1050
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1051
    .local v1, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v12, 0x7f0e15e8

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1052
    const v12, 0x104000a

    new-instance v13, Lcom/android/settings/easymode/EasyModeApp$4$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/easymode/EasyModeApp$4$1;-><init>(Lcom/android/settings/easymode/EasyModeApp$4;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1059
    const/high16 v12, 0x1040000

    new-instance v13, Lcom/android/settings/easymode/EasyModeApp$4$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/easymode/EasyModeApp$4$2;-><init>(Lcom/android/settings/easymode/EasyModeApp$4;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1065
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1041
    .end local v1    # "alertDialog":Landroid/app/AlertDialog$Builder;
    .restart local v6    # "i":I
    .restart local v11    # "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1068
    .end local v6    # "i":I
    .end local v11    # "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->applyEasyMode()V
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$1500(Lcom/android/settings/easymode/EasyModeApp;)V

    goto/16 :goto_1

    .line 1070
    .end local v8    # "mMultiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v10    # "mWpopup":Ljava/lang/Boolean;
    :cond_9
    const/4 v12, 0x1

    if-ne v9, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v12

    if-nez v12, :cond_a

    if-nez v4, :cond_b

    .line 1072
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v13, 0x0

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V
    invoke-static {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->access$1400(Lcom/android/settings/easymode/EasyModeApp;Z)V

    goto/16 :goto_1

    .line 1074
    :cond_b
    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mModeState:I
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$600(Lcom/android/settings/easymode/EasyModeApp;)I

    move-result v12

    if-nez v12, :cond_d

    .line 1075
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->saveEasyModeApps()V
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$1600(Lcom/android/settings/easymode/EasyModeApp;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->isDefaultEasyLauncher()Z
    invoke-static {v12}, Lcom/android/settings/easymode/EasyModeApp;->access$700(Lcom/android/settings/easymode/EasyModeApp;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1077
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1

    .line 1079
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->setDefaultLauncher(Z)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    const/4 v13, 0x1

    # invokes: Lcom/android/settings/easymode/EasyModeApp;->startLauncher(Z)V
    invoke-static {v12, v13}, Lcom/android/settings/easymode/EasyModeApp;->access$1400(Lcom/android/settings/easymode/EasyModeApp;Z)V

    goto/16 :goto_1

    .line 1083
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v12}, Lcom/android/settings/easymode/EasyModeApp;->finish()V

    goto/16 :goto_1
.end method
