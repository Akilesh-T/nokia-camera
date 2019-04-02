.class Lcom/android/camera/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/app/CameraAppUI$BottomPanel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/CameraActivity$4;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraActivity$4;
    .param p1, "x1"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$4;->share(Lcom/android/camera/data/FilmstripItem;)V

    return-void
.end method

.method private getCurrentDataId()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v0

    return v0
.end method

.method private getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentDataId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    return-object v0
.end method

.method private getShareIntentByData(Lcom/android/camera/data/FilmstripItem;)Landroid/content/Intent;
    .locals 6
    .param p1, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 552
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080266

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "msgShareTo":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemAttributes;->canShare()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "mimeType":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/camera/CameraActivity$4;->getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 557
    if-eqz v1, :cond_0

    .line 558
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 559
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 561
    :cond_0
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 563
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getShareIntentFromType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    :goto_0
    return-object v0

    .line 579
    :cond_0
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 582
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported mimeType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private share(Lcom/android/camera/data/FilmstripItem;)V
    .locals 3
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/android/camera/CameraActivity$4;->getShareIntentByData(Lcom/android/camera/data/FilmstripItem;)Landroid/content/Intent;

    move-result-object v0

    .line 525
    .local v0, "shareIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V

    .line 528
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getFilmstripBottomControls()Lcom/android/camera/app/CameraAppUI$BottomPanel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraAppUI$BottomPanel;->setShareEnabled(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onDelete()V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    .line 485
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentDataId()I

    move-result v0

    .line 486
    .local v0, "currentDataId":I
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2, v0}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    .line 490
    invoke-static {v3, v0}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)F

    move-result v3

    .line 486
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 491
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1, v0}, Lcom/android/camera/CameraActivity;->access$600(Lcom/android/camera/CameraActivity;I)V

    .line 492
    return-void
.end method

.method public onEdit()V
    .locals 6

    .prologue
    const/16 v5, 0x2710

    .line 457
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v2

    if-nez v2, :cond_0

    .line 470
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 459
    .local v1, "data":Lcom/android/camera/data/FilmstripItem;
    if-nez v1, :cond_1

    .line 460
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Cannot edit null data."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentDataId()I

    move-result v0

    .line 464
    .local v0, "currentDataId":I
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3, v0}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    .line 468
    invoke-static {v4, v0}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)F

    move-result v4

    .line 464
    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 469
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->launchEditor(Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public onExternalViewer()V
    .locals 6

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 434
    .local v1, "data":Lcom/android/camera/data/FilmstripItem;
    if-nez v1, :cond_1

    .line 435
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Cannot open null data."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 439
    .local v0, "contentUri":Landroid/net/Uri;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, v2, :cond_2

    .line 440
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Cannot open empty URL."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/Metadata;->isHasRgbzData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_should_show_refocus_viewer_cling"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_should_show_refocus_viewer_cling"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 449
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->clearClingForViewer(I)V

    goto :goto_0
.end method

.method public onProgressErrorClicked()V
    .locals 3

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 591
    .local v0, "data":Lcom/android/camera/data/FilmstripItem;
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    .line 592
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 591
    invoke-interface {v1, v2}, Lcom/android/camera/session/CaptureSessionManager;->removeErrorMessage(Landroid/net/Uri;)V

    .line 593
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1, v0}, Lcom/android/camera/CameraActivity;->access$900(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/FilmstripItem;)V

    .line 594
    return-void
.end method

.method public onShare()V
    .locals 6

    .prologue
    const/16 v5, 0x2710

    .line 496
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 497
    .local v1, "data":Lcom/android/camera/data/FilmstripItem;
    if-nez v1, :cond_0

    .line 498
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Cannot share null data."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentDataId()I

    move-result v0

    .line 503
    .local v0, "currentDataId":I
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3, v0}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    .line 507
    invoke-static {v4, v0}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)F

    move-result v4

    .line 503
    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 510
    invoke-static {v1}, Lcom/android/camera/util/ReleaseHelper;->shouldShowReleaseInfoDialogOnShare(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/CameraActivity$4$1;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/CameraActivity$4$1;-><init>(Lcom/android/camera/CameraActivity$4;Lcom/android/camera/data/FilmstripItem;)V

    invoke-static {v2, v3}, Lcom/android/camera/util/ReleaseHelper;->showReleaseInfoDialog(Landroid/app/Activity;Lcom/android/camera/util/Callback;)V

    goto :goto_0

    .line 519
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/CameraActivity$4;->share(Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public onTinyPlanet()V
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraActivity$4;->getCurrentLocalData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 476
    .local v0, "data":Lcom/android/camera/data/FilmstripItem;
    if-nez v0, :cond_1

    .line 477
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Cannot edit tiny planet on null data."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraActivity$4;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->launchTinyPlanetEditor(Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method
