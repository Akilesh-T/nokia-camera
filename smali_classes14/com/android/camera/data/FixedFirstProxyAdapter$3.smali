.class Lcom/android/camera/data/FixedFirstProxyAdapter$3;
.super Ljava/lang/Object;
.source "FixedFirstProxyAdapter.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/FixedFirstProxyAdapter;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/FixedFirstProxyAdapter;

.field final synthetic val$reporter:Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;


# direct methods
.method constructor <init>(Lcom/android/camera/data/FixedFirstProxyAdapter;Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/FixedFirstProxyAdapter;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/data/FixedFirstProxyAdapter$3;->this$0:Lcom/android/camera/data/FixedFirstProxyAdapter;

    iput-object p2, p0, Lcom/android/camera/data/FixedFirstProxyAdapter$3;->val$reporter:Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataRemoved(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 172
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter$3;->val$reporter:Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataUpdated(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter$3;->val$reporter:Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
