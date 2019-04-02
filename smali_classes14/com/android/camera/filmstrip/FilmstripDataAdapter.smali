.class public interface abstract Lcom/android/camera/filmstrip/FilmstripDataAdapter;
.super Ljava/lang/Object;
.source "FilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;,
        Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;
    }
.end annotation


# virtual methods
.method public abstract getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;
.end method

.method public abstract getItemViewType(I)I
.end method

.method public abstract getTotalNumber()I
.end method

.method public abstract getView(Landroid/view/View;ILcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
.end method

.method public abstract setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
.end method

.method public abstract suggestViewSizeBound(II)V
.end method
