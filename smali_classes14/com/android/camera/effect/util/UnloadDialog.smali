.class public Lcom/android/camera/effect/util/UnloadDialog;
.super Ljava/lang/Object;
.source "UnloadDialog.java"


# instance fields
.field private final mController:Lcom/android/camera/app/AppController;

.field private mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

.field private final mStyleTransferGalleryUI:Lcom/android/camera/app/GalleryStyleUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/app/GalleryStyleUI;Lcom/android/camera/effect/EffectChooseManager;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/camera/app/AppController;
    .param p2, "galleryStyleUI"    # Lcom/android/camera/app/GalleryStyleUI;
    .param p3, "effectChooseManager"    # Lcom/android/camera/effect/EffectChooseManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    .line 34
    iput-object p2, p0, Lcom/android/camera/effect/util/UnloadDialog;->mStyleTransferGalleryUI:Lcom/android/camera/app/GalleryStyleUI;

    .line 35
    iput-object p3, p0, Lcom/android/camera/effect/util/UnloadDialog;->mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

    .line 36
    return-void
.end method

.method private modifyMergeJsonFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "effectKey"    # Ljava/lang/String;
    .param p2, "effectContent"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    const/4 v6, 0x0

    .line 124
    .local v6, "merge_data_path":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v7}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v7}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 125
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "merge_sticker_data.json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    :cond_1
    :goto_0
    invoke-static {v6}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "mergeJsonString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 132
    .local v4, "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 133
    .local v1, "info":Lcom/android/camera/effect/util/EffectDataInfo;
    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 134
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    .end local v1    # "info":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v4    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .end local v5    # "mergeJsonString":Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v7}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "merge_animoji_data.json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 138
    .restart local v4    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .restart local v5    # "mergeJsonString":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Lcom/android/camera/effect/util/EffectGsonTool;->toJsonArrayEffectDI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    :cond_5
    invoke-static {v3, v6}, Lcom/android/camera/effect/util/EffectFileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    return-void
.end method


# virtual methods
.method public deleteAllAnimoj(Ljava/lang/String;)Z
    .locals 4
    .param p1, "effectContent"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "animojiFilePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    .line 96
    .local v1, "isAnimojiFileDeleted":Z
    :goto_0
    return v1

    .line 95
    .end local v1    # "isAnimojiFileDeleted":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public deleteAllSticker(Ljava/lang/String;)Z
    .locals 11
    .param p1, "effectContent"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "StickerZipPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "StickerFilePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "ThemeZipPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "ThemeFilePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v1}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    .line 87
    .local v5, "isStickerZipDeleted":Z
    :goto_0
    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v0}, Lcom/android/camera/effect/util/EffectFileUtil;->delFolder(Ljava/lang/String;)Z

    move-result v4

    .line 88
    .local v4, "isStickerFileDeleted":Z
    :goto_1
    invoke-static {v3}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v3}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v7

    .line 89
    .local v7, "isThemeZipDeleted":Z
    :goto_2
    invoke-static {v2}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v2}, Lcom/android/camera/effect/util/EffectFileUtil;->delFolder(Ljava/lang/String;)Z

    move-result v6

    .line 90
    .local v6, "isThemeFileDeleted":Z
    :goto_3
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    :goto_4
    return v8

    .end local v4    # "isStickerFileDeleted":Z
    .end local v5    # "isStickerZipDeleted":Z
    .end local v6    # "isThemeFileDeleted":Z
    .end local v7    # "isThemeZipDeleted":Z
    :cond_0
    move v5, v8

    .line 86
    goto :goto_0

    .restart local v5    # "isStickerZipDeleted":Z
    :cond_1
    move v4, v8

    .line 87
    goto :goto_1

    .restart local v4    # "isStickerFileDeleted":Z
    :cond_2
    move v7, v8

    .line 88
    goto :goto_2

    .restart local v7    # "isThemeZipDeleted":Z
    :cond_3
    move v6, v8

    .line 89
    goto :goto_3

    .line 90
    .restart local v6    # "isThemeFileDeleted":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_4
.end method

.method public showDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "position"    # I
    .param p2, "effectKey"    # Ljava/lang/String;
    .param p3, "effectContent"    # Ljava/lang/String;
    .param p4, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 40
    .local v7, "contentView":Landroid/view/View;
    const v0, 0x1020016

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 41
    .local v10, "title":Landroid/widget/TextView;
    const v0, 0x1020010

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 42
    .local v9, "summary":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 46
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    iget-object v0, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    .line 48
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/android/camera/effect/util/UnloadDialog$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/util/UnloadDialog$1;-><init>(Lcom/android/camera/effect/util/UnloadDialog;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 56
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 57
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 58
    iget-object v0, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/CameraActivity;->onDialogShowed(Landroid/app/AlertDialog;)V

    .line 59
    return-void
.end method

.method public unloadCloudisExist(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "effectKey"    # Ljava/lang/String;
    .param p3, "effectContent"    # Ljava/lang/String;
    .param p4, "currentValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/util/UnloadDialog;->deleteAllSticker(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mStyleTransferGalleryUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v1, p3, v2}, Lcom/android/camera/app/GalleryStyleUI;->setDownLoadStatus(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    move-object v0, p2

    .line 106
    .local v0, "currentEffect":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectChooseManager;->setCurrentEffectToDefault(Ljava/lang/String;)V

    .line 119
    .end local v0    # "currentEffect":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/util/UnloadDialog;->deleteAllAnimoj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mStyleTransferGalleryUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v1, p3, v2}, Lcom/android/camera/app/GalleryStyleUI;->setDownLoadStatus(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    move-object v0, p2

    .line 115
    .restart local v0    # "currentEffect":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectChooseManager;->setCurrentEffectToDefault(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unloadImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "effectKey"    # Ljava/lang/String;
    .param p3, "effectContent"    # Ljava/lang/String;
    .param p4, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/util/UnloadDialog;->deleteAllSticker(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/android/camera/effect/util/UnloadDialog;->modifyMergeJsonFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mStyleTransferGalleryUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v1, p1}, Lcom/android/camera/app/GalleryStyleUI;->removeItemByPosition(I)V

    .line 65
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

    invoke-virtual {v1, p2}, Lcom/android/camera/effect/EffectChooseManager;->setCurrentEffectToDefault(Ljava/lang/String;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0, p3}, Lcom/android/camera/effect/util/UnloadDialog;->deleteAllAnimoj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/android/camera/effect/util/UnloadDialog;->modifyMergeJsonFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mStyleTransferGalleryUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v1, p1}, Lcom/android/camera/app/GalleryStyleUI;->removeItemByPosition(I)V

    .line 73
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_effect_choose_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "currentEffect":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/util/UnloadDialog;->mEffectChooseManager:Lcom/android/camera/effect/EffectChooseManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectChooseManager;->setCurrentEffectToDefault(Ljava/lang/String;)V

    goto :goto_0
.end method
