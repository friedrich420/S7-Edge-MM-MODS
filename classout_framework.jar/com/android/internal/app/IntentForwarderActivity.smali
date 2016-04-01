.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final TARGET_USER_ID_DEFAULT_VALUE:I

.field private targetUserIdForKnox:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string v0, "IntentForwarderActivity"

    sput-object v0, TAG:Ljava/lang/String;

    .line 61
    const-string v0, "com.android.internal.app.ForwardIntentToUserOwner"

    sput-object v0, FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    .line 64
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, TARGET_USER_ID_DEFAULT_VALUE:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, targetUserIdForKnox:I

    return-void
.end method

.method private getManagedProfile()I
    .registers 8

    .prologue
    .line 291
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 292
    .local v3, "userManager":Landroid/os/UserManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 293
    .local v1, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 294
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_12

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 298
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_26
    return v4

    .line 296
    :cond_27
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been called, but there is no managed profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/16 v4, -0x2710

    goto :goto_26
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Z
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUserId"    # I

    .prologue
    const v11, 0x1040b37

    const/4 v8, 0x0

    .line 214
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 218
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {p2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 221
    invoke-virtual {p0}, getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 222
    .local v5, "personaManager":Landroid/os/PersonaManager;
    const-string/jumbo v9, "persona_policy"

    invoke-virtual {v5, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaPolicyManager;

    .line 224
    .local v6, "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    invoke-virtual {v5, p2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v0

    .line 226
    .local v0, "curState":Landroid/content/pm/PersonaState;
    invoke-virtual {v5, p2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v9

    sget-object v10, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v9

    if-nez v9, :cond_4c

    sget-object v9, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v0, v9, :cond_4c

    sget-object v9, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v0, v9, :cond_4c

    sget-object v9, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    if-eq v0, v9, :cond_4c

    sget-object v9, Landroid/content/pm/PersonaState;->CONTAINER_APPS_URGENT_UPDATE:Landroid/content/pm/PersonaState;

    if-eq v0, v9, :cond_4c

    sget-object v9, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    if-ne v0, v9, :cond_5c

    .line 232
    :cond_4c
    invoke-virtual {p0}, getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v11}, getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 279
    .end local v0    # "curState":Landroid/content/pm/PersonaState;
    .end local v5    # "personaManager":Landroid/os/PersonaManager;
    .end local v6    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :goto_5b
    return v8

    .line 236
    .restart local v0    # "curState":Landroid/content/pm/PersonaState;
    .restart local v5    # "personaManager":Landroid/os/PersonaManager;
    .restart local v6    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_5c
    const/4 v3, 0x0

    .line 238
    .local v3, "intentAction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 239
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 240
    .local v2, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 245
    .end local v2    # "innerIntent":Landroid/content/Intent;
    :goto_75
    if-eqz v3, :cond_a2

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_87

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 247
    :cond_87
    invoke-virtual {v6, p2}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v9

    if-nez v9, :cond_a2

    .line 250
    invoke-virtual {p0}, getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v11}, getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_5b

    .line 243
    :cond_9d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_75

    .line 256
    .end local v0    # "curState":Landroid/content/pm/PersonaState;
    .end local v3    # "intentAction":Ljava/lang/String;
    .end local v5    # "personaManager":Landroid/os/PersonaManager;
    .end local v6    # "personaPolicyManager":Landroid/os/PersonaPolicyManager;
    :cond_a2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_dc

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.CHOOSER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 258
    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 259
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 263
    :cond_c4
    const-string v9, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 264
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "A chooser intent with replacement extras cannot be forwarded to a different user"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 268
    :cond_d4
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    check-cast p1, Landroid/content/Intent;

    .line 270
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_dc
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "resolvedType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_ee

    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 275
    :cond_ee
    :try_start_ee
    invoke-virtual {p0}, getUserId()I

    move-result v9

    invoke-interface {v4, p1, v7, v9, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_f5} :catch_f8

    move-result v8

    goto/16 :goto_5b

    .line 277
    :catch_f8
    move-exception v1

    .line 278
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "PackageManagerService is dead?"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 78
    .local v12, "intentReceived":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "className":Ljava/lang/String;
    :try_start_f
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 85
    .local v19, "tempIntent":Landroid/content/Intent;
    const-string v23, "crossProfileTargetUserId"

    const/16 v24, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, targetUserIdForKnox:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_2ed

    .line 93
    .end local v19    # "tempIntent":Landroid/content/Intent;
    :goto_2a
    sget-object v23, FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_45

    .line 94
    const v22, 0x104043d

    .line 95
    .local v22, "userMessageId":I
    const/16 v18, 0x0

    .line 109
    .local v18, "targetUserId":I
    :goto_39
    const/16 v23, -0x2710

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_8f

    .line 111
    invoke-virtual/range {p0 .. p0}, finish()V

    .line 211
    :goto_44
    return-void

    .line 96
    .end local v18    # "targetUserId":I
    .end local v22    # "userMessageId":I
    :cond_45
    sget-object v23, FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6c

    .line 97
    const v22, 0x104043e

    .line 99
    .restart local v22    # "userMessageId":I
    move-object/from16 v0, p0

    iget v0, v0, targetUserIdForKnox:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_67

    .line 100
    move-object/from16 v0, p0

    iget v0, v0, targetUserIdForKnox:I

    move/from16 v18, v0

    .restart local v18    # "targetUserId":I
    goto :goto_39

    .line 103
    .end local v18    # "targetUserId":I
    :cond_67
    invoke-direct/range {p0 .. p0}, getManagedProfile()I

    move-result v18

    .restart local v18    # "targetUserId":I
    goto :goto_39

    .line 105
    .end local v18    # "targetUserId":I
    .end local v22    # "userMessageId":I
    :cond_6c
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-class v25, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " cannot be called directly"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v22, -0x1

    .line 107
    .restart local v22    # "userMessageId":I
    const/16 v18, -0x2710

    .restart local v18    # "targetUserId":I
    goto :goto_39

    .line 114
    :cond_8f
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 115
    .local v15, "newIntent":Landroid/content/Intent;
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v23, 0x3000000

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual/range {p0 .. p0}, getUserId()I

    move-result v6

    .line 122
    .local v6, "callingUserId":I
    const/4 v10, 0x0

    .line 123
    .local v10, "forwardfromKnox":Z
    const/16 v23, 0x64

    move/from16 v0, v23

    if-lt v6, v0, :cond_b5

    .line 124
    const/4 v10, 0x1

    .line 128
    :cond_b5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, canForward(Landroid/content/Intent;I)Z

    move-result v23

    if-eqz v23, :cond_2b3

    .line 129
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.CHOOSER"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_23f

    .line 130
    const-string v23, "android.intent.extra.INTENT"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 131
    .local v11, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v11, v6}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 136
    .end local v11    # "innerIntent":Landroid/content/Intent;
    :goto_d8
    invoke-virtual/range {p0 .. p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/high16 v24, 0x10000

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 141
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v16, :cond_136

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_136

    const-string v23, "android"

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_136

    const-class v23, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_244

    const-class v23, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_244

    :cond_136
    const/16 v17, 0x1

    .line 148
    .local v17, "shouldShowDisclosure":Z
    :goto_138
    :try_start_138
    invoke-static {v6}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v23

    if-eqz v23, :cond_248

    if-nez v18, :cond_248

    .line 149
    if-eqz v15, :cond_248

    const-string v23, "file"

    invoke-virtual {v15}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_248

    const-string v23, "isFromBBCProvider"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_248

    .line 150
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v5, "bbcIntent":Landroid/content/Intent;
    const-string v23, "base_intent"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    const-string v23, "com.samsung.android.bbc.fileprovider"

    const-string v24, "com.samsung.android.bbc.fileprovider.IntentForwardActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2, v6}, startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 154
    invoke-virtual/range {p0 .. p0}, finish()V
    :try_end_183
    .catch Ljava/lang/RuntimeException; {:try_start_138 .. :try_end_183} :catch_185

    goto/16 :goto_44

    .line 168
    .end local v5    # "bbcIntent":Landroid/content/Intent;
    :catch_185
    move-exception v9

    .line 169
    .local v9, "e":Ljava/lang/RuntimeException;
    const/4 v14, -0x1

    .line 170
    .local v14, "launchedFromUid":I
    const-string v13, "?"

    .line 172
    .local v13, "launchedFromPackage":Ljava/lang/String;
    :try_start_189
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, getActivityToken()Landroid/os/IBinder;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v14

    .line 174
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, getActivityToken()Landroid/os/IBinder;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1a0
    .catch Landroid/os/RemoteException; {:try_start_189 .. :try_end_1a0} :catch_2ea

    move-result-object v13

    .line 179
    :goto_1a1
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unable to launch as UID "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", while running in "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "launchedFromPackage":Ljava/lang/String;
    .end local v14    # "launchedFromUid":I
    :goto_1d9
    const-string/jumbo v23, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .line 187
    .local v21, "userManager":Landroid/os/UserManager;
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    .line 188
    .local v20, "ui":Landroid/content/pm/UserInfo;
    if-eqz v20, :cond_1f8

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v23

    if-eqz v23, :cond_1f8

    .line 189
    const/16 v17, 0x0

    .line 190
    :cond_1f8
    if-eqz v10, :cond_299

    .line 191
    const-string v23, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 192
    .local v4, "am":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v23

    if-nez v23, :cond_23a

    .line 193
    invoke-static/range {p0 .. p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_21a

    sget-object v23, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static/range {v23 .. v23}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v23

    if-nez v23, :cond_23a

    .line 195
    :cond_21a
    new-instance v23, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x103012b

    invoke-direct/range {v23 .. v25}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v24, 0x10409f4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 210
    .end local v4    # "am":Landroid/app/ActivityManager;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "shouldShowDisclosure":Z
    .end local v20    # "ui":Landroid/content/pm/UserInfo;
    .end local v21    # "userManager":Landroid/os/UserManager;
    :cond_23a
    :goto_23a
    invoke-virtual/range {p0 .. p0}, finish()V

    goto/16 :goto_44

    .line 133
    :cond_23f
    invoke-virtual {v15, v6}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    goto/16 :goto_d8

    .line 141
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_244
    const/16 v17, 0x0

    goto/16 :goto_138

    .line 160
    .restart local v17    # "shouldShowDisclosure":Z
    :cond_248
    if-eqz v15, :cond_256

    :try_start_24a
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.CHOOSER"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_26e

    :cond_256
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.SEND"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_26e

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_288

    .line 163
    :cond_26e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v8, "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v23, Landroid/content/ComponentName;

    const-string v24, "com.sec.knox.bluetooth"

    const-string v25, "com.sec.knox.bluetooth.BluetoothFileTransfer"

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v23, "extra_chooser_droplist"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 167
    .end local v8    # "compArrary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_288
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v0, v15, v1, v2, v3}, startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_297
    .catch Ljava/lang/RuntimeException; {:try_start_24a .. :try_end_297} :catch_185

    goto/16 :goto_1d9

    .line 203
    .restart local v20    # "ui":Landroid/content/pm/UserInfo;
    .restart local v21    # "userManager":Landroid/os/UserManager;
    :cond_299
    if-eqz v17, :cond_23a

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto :goto_23a

    .line 207
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "shouldShowDisclosure":Z
    .end local v20    # "ui":Landroid/content/pm/UserInfo;
    .end local v21    # "userManager":Landroid/os/UserManager;
    :cond_2b3
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "the intent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "cannot be forwarded from user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " to user "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23a

    .line 176
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "launchedFromPackage":Ljava/lang/String;
    .restart local v14    # "launchedFromUid":I
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "shouldShowDisclosure":Z
    :catch_2ea
    move-exception v23

    goto/16 :goto_1a1

    .line 86
    .end local v6    # "callingUserId":I
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "forwardfromKnox":Z
    .end local v13    # "launchedFromPackage":Ljava/lang/String;
    .end local v14    # "launchedFromUid":I
    .end local v15    # "newIntent":Landroid/content/Intent;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v17    # "shouldShowDisclosure":Z
    .end local v18    # "targetUserId":I
    .end local v22    # "userMessageId":I
    :catch_2ed
    move-exception v23

    goto/16 :goto_2a
.end method
