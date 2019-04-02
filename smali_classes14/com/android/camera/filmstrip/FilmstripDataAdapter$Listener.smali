.class public interface abstract Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;
.super Ljava/lang/Object;
.source "FilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/FilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
.end method

.method public abstract onFilmstripItemLoaded()V
.end method

.method public abstract onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V
.end method

.method public abstract onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
.end method
