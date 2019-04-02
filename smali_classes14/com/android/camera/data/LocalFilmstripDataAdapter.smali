.class public interface abstract Lcom/android/camera/data/LocalFilmstripDataAdapter;
.super Ljava/lang/Object;
.source "LocalFilmstripDataAdapter.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter;
.implements Lcom/android/camera/widget/Preloader$ItemLoader;
.implements Lcom/android/camera/widget/Preloader$ItemSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
        "Lcom/android/camera/widget/Preloader$ItemLoader",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/os/AsyncTask;",
        ">;",
        "Lcom/android/camera/widget/Preloader$ItemSource",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z
.end method

.method public abstract clear()V
.end method

.method public abstract executeDeletion()Z
.end method

.method public abstract findByContentUri(Landroid/net/Uri;)I
.end method

.method public abstract getItemAt(I)Lcom/android/camera/data/FilmstripItem;
.end method

.method public abstract isMetadataUpdatedAt(I)Z
.end method

.method public abstract refresh(Landroid/net/Uri;)V
.end method

.method public abstract removeAt(I)V
.end method

.method public abstract requestLoad(Lcom/android/camera/util/Callback;ZJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZJ)V"
        }
    .end annotation
.end method

.method public abstract requestLoadNewMidia(Lcom/android/camera/util/Callback;ZJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZJ)V"
        }
    .end annotation
.end method

.method public abstract setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V
.end method

.method public abstract undoDeletion()Z
.end method

.method public abstract updateItemAt(ILcom/android/camera/data/FilmstripItem;)V
.end method

.method public abstract updateMetadataAt(I)Landroid/os/AsyncTask;
.end method
