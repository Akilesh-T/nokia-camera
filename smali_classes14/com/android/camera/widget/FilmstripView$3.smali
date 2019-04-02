.class Lcom/android/camera/widget/FilmstripView$3;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView;->setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 1580
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1300(Lcom/android/camera/widget/FilmstripView;)V

    .line 1584
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$1700(Lcom/android/camera/widget/FilmstripView;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onDataFocusChanged(II)V

    .line 1587
    :cond_0
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFilmstripItemInserted()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1800(Lcom/android/camera/widget/FilmstripView;)V

    .line 1589
    return-void

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/widget/FilmstripView;->access$1500(Lcom/android/camera/widget/FilmstripView;I)V

    goto :goto_0
.end method

.method public onFilmstripItemLoaded()V
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1300(Lcom/android/camera/widget/FilmstripView;)V

    .line 1569
    return-void
.end method

.method public onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/widget/FilmstripView;->access$1900(Lcom/android/camera/widget/FilmstripView;I)V

    .line 1594
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripView;->access$1700(Lcom/android/camera/widget/FilmstripView;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/filmstrip/FilmstripController$FilmstripListener;->onDataFocusChanged(II)V

    .line 1597
    :cond_0
    invoke-static {}, Lcom/android/camera/widget/FilmstripView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFilmstripItemRemoved()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView;->access$1800(Lcom/android/camera/widget/FilmstripView;)V

    .line 1599
    return-void
.end method

.method public onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 1
    .param p1, "reporter"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripView$3;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/android/camera/widget/FilmstripView;->access$1400(Lcom/android/camera/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    .line 1574
    return-void
.end method
