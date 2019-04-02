.class Lcom/android/camera/data/FixedFirstProxyAdapter$2;
.super Ljava/lang/Object;
.source "FixedFirstProxyAdapter.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/FixedFirstProxyAdapter;->onFilmstripItemLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/FixedFirstProxyAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/data/FixedFirstProxyAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/FixedFirstProxyAdapter;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/camera/data/FixedFirstProxyAdapter$2;->this$0:Lcom/android/camera/data/FixedFirstProxyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataRemoved(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isDataUpdated(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 162
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
