.class Lcom/android/server/policy/GlobalActions$8;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .registers 13
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 1410
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1467
    invoke-super/range {p0 .. p4}, Lcom/android/server/policy/GlobalActions$ToggleAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v9

    .line 1468
    .local v9, "v":Landroid/view/View;
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x6f

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 1469
    .local v0, "arg1":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x70

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 1470
    .local v1, "arg2":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x71

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1472
    .local v2, "arg3":[Ljava/lang/String;
    iget-object v10, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v0}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1473
    .local v7, "proKioskString":Ljava/lang/String;
    iget-object v10, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v1}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1474
    .local v6, "proKioskStatusOnString":Ljava/lang/String;
    iget-object v10, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v2}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1480
    .local v5, "proKioskStatusOffString":Ljava/lang/String;
    const v10, 0x102000b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1481
    .local v3, "messageView":Landroid/widget/TextView;
    const v10, 0x10203ad

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1482
    .local v8, "statusView":Landroid/widget/TextView;
    if-eqz v7, :cond_60

    .line 1483
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    :cond_60
    iget-object v10, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v11, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v10, v11, :cond_6c

    iget-object v10, p0, mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v11, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v10, v11, :cond_75

    :cond_6c
    const/4 v4, 0x1

    .line 1486
    .local v4, "on":Z
    :goto_6d
    if-eqz v4, :cond_77

    .line 1487
    if-eqz v6, :cond_74

    .line 1488
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    :cond_74
    :goto_74
    return-object v9

    .line 1485
    .end local v4    # "on":Z
    :cond_75
    const/4 v4, 0x0

    goto :goto_6d

    .line 1491
    .restart local v4    # "on":Z
    :cond_77
    if-eqz v5, :cond_74

    .line 1492
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74
.end method

.method public onToggle(Z)V
    .registers 16
    .param p1, "on"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1413
    iget-object v8, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v10, "getSealedState"

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$3500(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 1414
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1415
    .local v5, "i":Landroid/content/Intent;
    new-array v0, v13, [Ljava/lang/String;

    const/16 v8, 0xdd

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v12

    .line 1416
    .local v0, "arg1":[Ljava/lang/String;
    new-array v1, v13, [Ljava/lang/String;

    const/16 v8, 0xde

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v12

    .line 1418
    .local v1, "arg2":[Ljava/lang/String;
    iget-object v8, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v10, "getSealedExitUI"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v0}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1419
    .local v4, "exitUiPackage":Ljava/lang/String;
    iget-object v8, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v10, "getSealedExitUI"

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v1}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1422
    .local v3, "exitUiClass":Ljava/lang/String;
    move-object v7, v3

    .line 1423
    .local v7, "qualClass":Ljava/lang/String;
    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$3700()Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 1427
    .local v6, "proKioskExitDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7de

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1430
    if-eqz v4, :cond_bd

    if-eqz v3, :cond_bd

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_bd

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_bd

    .line 1431
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 1432
    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 1433
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1438
    :cond_8c
    :goto_8c
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1441
    :try_start_94
    iget-object v8, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_94 .. :try_end_9f} :catch_b8

    .line 1449
    .end local v0    # "arg1":[Ljava/lang/String;
    .end local v1    # "arg2":[Ljava/lang/String;
    .end local v3    # "exitUiClass":Ljava/lang/String;
    .end local v4    # "exitUiPackage":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "proKioskExitDialog":Landroid/app/AlertDialog;
    .end local v7    # "qualClass":Ljava/lang/String;
    :cond_9f
    :goto_9f
    return-void

    .line 1435
    .restart local v0    # "arg1":[Ljava/lang/String;
    .restart local v1    # "arg2":[Ljava/lang/String;
    .restart local v3    # "exitUiClass":Ljava/lang/String;
    .restart local v4    # "exitUiPackage":Ljava/lang/String;
    .restart local v5    # "i":Landroid/content/Intent;
    .restart local v6    # "proKioskExitDialog":Landroid/app/AlertDialog;
    .restart local v7    # "qualClass":Ljava/lang/String;
    :cond_a0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_8c

    .line 1442
    :catch_b8
    move-exception v2

    .line 1443
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_9f

    .line 1446
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_bd
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_9f
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 1457
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 1461
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 1452
    const/4 v0, 0x1

    return v0
.end method
