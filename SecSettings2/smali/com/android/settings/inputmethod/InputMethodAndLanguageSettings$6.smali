.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 1184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v12, :cond_0

    .line 1187
    const-string v9, "phone_language"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_0
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v2

    .line 1191
    .local v2, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 1194
    const-string v9, "key_user_dictionary_settings"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_1
    const-string v9, "textservices"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/TextServicesManager;

    .line 1199
    .local v6, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-static {p1}, Lcom/android/settings/Utils;->isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z

    move-result v0

    .line 1201
    .local v0, "isInstalledSpellCheckerService":Z
    const-string v9, "InputMethodAndLanguageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isInstalledAnySpellCheckerPakcage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {v6}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1205
    invoke-virtual {v6}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    .line 1207
    .local v4, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v4, :cond_9

    .line 1209
    const-string v9, "com.sec.android.inputmethod"

    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1212
    .local v5, "skipSetSummary":Z
    if-eqz v5, :cond_3

    .line 1213
    if-nez v0, :cond_2

    .line 1214
    const-string v9, "spellcheckers_settings"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    :cond_2
    if-nez v0, :cond_3

    .line 1217
    const-string v9, "key_user_dictionary_settings"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v5    # "skipSetSummary":Z
    :cond_3
    :goto_0
    const-string v9, "input_method"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1235
    .local v3, "mImm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_4

    .line 1236
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1237
    const-string v9, "InputMethodAndLanguageSettings"

    const-string v10, "Current IME is Samsung Keyboard"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const-string v9, "spellcheckers_settings"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    const-string v9, "key_user_dictionary_settings"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Sip_SupportKcmForHwKeyboard"

    invoke-virtual {v9, v10, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1244
    const-string v9, "hard_keyboard"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    :cond_5
    # invokes: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$1100()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1248
    const-string v9, "game_controller_settings_category"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    const-string v9, "vibrate_input_devices"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_6
    new-instance v7, Landroid/speech/tts/TtsEngines;

    invoke-direct {v7, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 1253
    .local v7, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual {v7}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1254
    const-string v9, "tts_settings"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.spen_usp"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    .line 1258
    .local v8, "uspLevel":I
    const/4 v9, 0x2

    if-ge v8, v9, :cond_8

    .line 1259
    const-string v9, "handwriting_language"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_8
    return-object v1

    .line 1221
    .end local v3    # "mImm":Landroid/view/inputmethod/InputMethodManager;
    .end local v7    # "ttsEngines":Landroid/speech/tts/TtsEngines;
    .end local v8    # "uspLevel":I
    .restart local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_9
    const-string v9, "InputMethodAndLanguageSettings"

    const-string v10, "cannot find spellcheckerinfo"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    if-nez v0, :cond_a

    .line 1223
    const-string v9, "spellcheckers_settings"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    :cond_a
    if-nez v0, :cond_3

    .line 1226
    const-string v9, "key_user_dictionary_settings"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v13, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    const v29, 0x7f0e086c

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1001
    .local v22, "screenTitle":Ljava/lang/String;
    new-instance v12, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1056
    .local v12, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v29, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    .line 1058
    .local v17, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v11

    .line 1060
    .local v11, "immValues":Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v11}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 1063
    invoke-virtual {v11}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v18

    .line 1064
    .local v18, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v18, :cond_1

    const/16 v16, 0x0

    .line 1065
    .local v16, "inputMethodCount":I
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 1066
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    .line 1068
    .local v15, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v15, v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v27

    .line 1071
    .local v27, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v25

    .line 1072
    .local v25, "subtypeCount":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 1073
    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1074
    .local v24, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_0

    .line 1075
    const/16 v29, 0x2c

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1077
    :cond_0
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v26

    .line 1080
    .local v26, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1072
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1064
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "i":I
    .end local v15    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v16    # "inputMethodCount":I
    .end local v19    # "j":I
    .end local v24    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v25    # "subtypeCount":I
    .end local v26    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v27    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v16

    goto :goto_0

    .line 1082
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "i":I
    .restart local v15    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v16    # "inputMethodCount":I
    .restart local v19    # "j":I
    .restart local v25    # "subtypeCount":I
    .restart local v27    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1084
    .local v28, "summary":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v23

    .line 1085
    .local v23, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1089
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1090
    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1091
    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1092
    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1093
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1097
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v19    # "j":I
    .end local v23    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v25    # "subtypeCount":I
    .end local v27    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v28    # "summary":Ljava/lang/String;
    :cond_3
    const-string v29, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/input/InputManager;

    .line 1099
    .local v14, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v8, 0x0

    .line 1101
    .local v8, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v7

    .line 1102
    .local v7, "devices":[I
    const/4 v9, 0x0

    :goto_3
    array-length v0, v7

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v9, v0, :cond_8

    .line 1103
    aget v29, v7, v9

    invoke-static/range {v29 .. v29}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    .line 1104
    .local v6, "device":Landroid/view/InputDevice;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v29

    if-nez v29, :cond_4

    invoke-virtual {v6}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v29

    if-nez v29, :cond_5

    .line 1102
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1108
    :cond_5
    const/4 v8, 0x1

    .line 1110
    invoke-virtual {v6}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v10

    .line 1111
    .local v10, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v14, v10}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v21

    .line 1113
    .local v21, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v20

    .line 1117
    .local v20, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_5
    if-eqz v20, :cond_7

    .line 1118
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1123
    .restart local v28    # "summary":Ljava/lang/String;
    :goto_6
    new-instance v12, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v12    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1124
    .restart local v12    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1125
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1126
    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 1127
    move-object/from16 v0, v28

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 1128
    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1129
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1113
    .end local v20    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v28    # "summary":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    goto :goto_5

    .line 1120
    .restart local v20    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_7
    const v29, 0x7f0e0887

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "summary":Ljava/lang/String;
    goto :goto_6

    .line 1132
    .end local v6    # "device":Landroid/view/InputDevice;
    .end local v10    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v20    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v21    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v28    # "summary":Ljava/lang/String;
    :cond_8
    if-eqz v8, :cond_9

    .line 1134
    new-instance v12, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v12    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1135
    .restart local v12    # "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v29, "builtin_keyboard_settings"

    move-object/from16 v0, v29

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 1136
    const v29, 0x7f0e08be

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1138
    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1139
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_9
    return-object v13
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 991
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 992
    const v1, 0x7f080062

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 993
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
