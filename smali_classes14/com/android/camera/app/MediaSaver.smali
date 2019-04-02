.class public interface abstract Lcom/android/camera/app/MediaSaver;
.super Ljava/lang/Object;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;,
        Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;,
        Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;,
        Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;,
        Lcom/android/camera/app/MediaSaver$QueueListener;
    }
.end annotation


# virtual methods
.method public abstract addBurstImage([BLjava/lang/String;Ljava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;J)V
.end method

.method public abstract addDualSightImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V
.end method

.method public abstract addDualSightVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract addGdepthImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V
.end method

.method public abstract addImage([BLjava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract addImage([BLjava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract addMpoImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract addRawImage([BLjava/lang/String;JLandroid/location/Location;IILcom/android/camera/app/MediaSaver$OnRawDataSavedListener;)V
.end method

.method public abstract addVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract bulkInsertToMediaStore([Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract deleteImageFromMediaStore(Landroid/net/Uri;)V
.end method

.method public abstract insertToMediaStore(Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
.end method

.method public abstract isQueueEmpty()Z
.end method

.method public abstract isQueueFull()Z
.end method

.method public abstract setQueueListener(Lcom/android/camera/app/MediaSaver$QueueListener;)V
.end method

.method public abstract updateGdepthImage(Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;)V
.end method

.method public abstract updateImage(Landroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;)V
.end method

.method public abstract updateMpoImage(Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;)V
.end method
