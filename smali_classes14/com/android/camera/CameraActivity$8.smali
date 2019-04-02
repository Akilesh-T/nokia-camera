.class Lcom/android/camera/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripContentPanel$Listener;


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
    .line 963
    iput-object p1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataFocusChanged(II)V
    .locals 2
    .param p1, "prevIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/CameraActivity$8$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/CameraActivity$8$1;-><init>(Lcom/android/camera/CameraActivity$8;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDataReloaded()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2600(Lcom/android/camera/CameraActivity;I)V

    goto :goto_0
.end method

.method public onDataUpdated(I)V
    .locals 2
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2600(Lcom/android/camera/CameraActivity;I)V

    goto :goto_0
.end method

.method public onEnterFilmstrip(I)V
    .locals 2
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2500(Lcom/android/camera/CameraActivity;Z)V

    .line 1053
    :cond_0
    return-void
.end method

.method public onEnterFullScreenUiHidden(I)V
    .locals 2
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2500(Lcom/android/camera/CameraActivity;Z)V

    .line 1041
    :cond_0
    return-void
.end method

.method public onEnterFullScreenUiShown(I)V
    .locals 2
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2500(Lcom/android/camera/CameraActivity;Z)V

    .line 1029
    :cond_0
    return-void
.end method

.method public onEnterZoomView(I)V
    .locals 2
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2500(Lcom/android/camera/CameraActivity;Z)V

    .line 1081
    :cond_0
    return-void
.end method

.method public onFilmstripHidden()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 979
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v3}, Lcom/android/camera/CameraActivity;->access$2302(Lcom/android/camera/CameraActivity;Z)Z

    .line 980
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$2400(Lcom/android/camera/CameraActivity;)I

    move-result v1

    const/16 v2, 0x2710

    .line 981
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 980
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(ILjava/lang/Integer;)V

    .line 982
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v3}, Lcom/android/camera/CameraActivity;->access$2500(Lcom/android/camera/CameraActivity;Z)V

    .line 987
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->goToFirstItem()V

    .line 988
    return-void
.end method

.method public onFilmstripShown()V
    .locals 3

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2302(Lcom/android/camera/CameraActivity;Z)Z

    .line 993
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 994
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$2400(Lcom/android/camera/CameraActivity;)I

    move-result v1

    const/16 v2, 0x2710

    .line 995
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 994
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(ILjava/lang/Integer;)V

    .line 996
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2600(Lcom/android/camera/CameraActivity;I)V

    .line 997
    return-void
.end method

.method public onFocusedDataDemoted(I)V
    .locals 4
    .param p1, "adapterIndex"    # I

    .prologue
    const/16 v3, 0x2710

    .line 1016
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1, p1}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    .line 1020
    invoke-static {v2, p1}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)F

    move-result v2

    .line 1016
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 1021
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$600(Lcom/android/camera/CameraActivity;I)V

    .line 1022
    return-void
.end method

.method public onFocusedDataLongPressed(I)V
    .locals 0
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1002
    return-void
.end method

.method public onFocusedDataPromoted(I)V
    .locals 4
    .param p1, "adapterIndex"    # I

    .prologue
    const/16 v3, 0x2710

    .line 1006
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1, p1}, Lcom/android/camera/CameraActivity;->access$400(Lcom/android/camera/CameraActivity;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    .line 1009
    invoke-static {v2, p1}, Lcom/android/camera/CameraActivity;->access$500(Lcom/android/camera/CameraActivity;I)F

    move-result v2

    .line 1006
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 1011
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, p1}, Lcom/android/camera/CameraActivity;->access$600(Lcom/android/camera/CameraActivity;I)V

    .line 1012
    return-void
.end method

.method public onLeaveFilmstrip(I)V
    .locals 0
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1058
    return-void
.end method

.method public onLeaveFullScreenUiHidden(I)V
    .locals 0
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1046
    return-void
.end method

.method public onLeaveFullScreenUiShown(I)V
    .locals 0
    .param p1, "adapterIndex"    # I

    .prologue
    .line 1034
    return-void
.end method

.method public onScroll(III)V
    .locals 2
    .param p1, "firstVisiblePosition"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2700(Lcom/android/camera/CameraActivity;)Lcom/android/camera/widget/Preloader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2700(Lcom/android/camera/CameraActivity;)Lcom/android/camera/widget/Preloader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/camera/widget/Preloader;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1122
    :cond_0
    return-void
.end method

.method public onSwipeOut()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method public onSwipeOutBegin()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2000(Lcom/android/camera/CameraActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 972
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideBottomControls()V

    .line 973
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$2102(Lcom/android/camera/CameraActivity;Z)Z

    .line 974
    iget-object v0, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2200(Lcom/android/camera/CameraActivity;)V

    .line 975
    return-void
.end method

.method public onZoomAtIndexChanged(IF)V
    .locals 8
    .param p1, "adapterIndex"    # I
    .param p2, "zoom"    # F

    .prologue
    .line 1085
    iget-object v4, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraActivity$8;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 1087
    .local v2, "filmstripItem":Lcom/android/camera/data/FilmstripItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1088
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 1092
    .local v0, "ageMillis":J
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 1096
    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v3, "localFile":Ljava/io/File;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1098
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1097
    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/camera/stats/UsageStatistics;->mediaView(Ljava/lang/String;JF)V

    goto :goto_0
.end method
