.class public Lcom/android/camera/session/CaptureSessionFactoryImpl;
.super Ljava/lang/Object;
.source "CaptureSessionFactoryImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionFactory;


# static fields
.field private static final TEMP_SESSIONS:Ljava/lang/String; = "TEMP_SESSIONS"


# instance fields
.field private final mMediaSaver:Lcom/android/camera/app/MediaSaver;

.field private final mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

.field private final mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/MediaSaver;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/session/SessionStorageManager;)V
    .locals 0
    .param p1, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;
    .param p2, "placeholderManager"    # Lcom/android/camera/session/PlaceholderManager;
    .param p3, "sessionStorageManager"    # Lcom/android/camera/session/SessionStorageManager;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 37
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 38
    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    .line 39
    return-void
.end method


# virtual methods
.method public createNewBurstSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 8
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sessionStartMillis"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/session/BurstCaptureSessionImpl;

    iget-object v7, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p6

    move-object v5, p2

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/session/BurstCaptureSessionImpl;-><init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/app/MediaSaver;)V

    return-object v0
.end method

.method public createNewMicroVideoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 12
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sessionStartMillis"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "previewDataRenderFactory"    # Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;
    .param p8, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 75
    new-instance v5, Lcom/android/camera/session/TemporarySessionFile;

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    const-string v1, "TEMP_SESSIONS"

    invoke-direct {v5, v0, v1, p3}, Lcom/android/camera/session/TemporarySessionFile;-><init>(Lcom/android/camera/session/SessionStorageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v5, "temporarySessionFile":Lcom/android/camera/session/TemporarySessionFile;
    new-instance v0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    iget-object v9, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v10, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object v1, p3

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p8

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;-><init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/TemporarySessionFile;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;)V

    return-object v0
.end method

.method public createNewPanoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 10
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sessionStartMillis"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 58
    new-instance v0, Lcom/android/camera/session/PanoCaptureSessionImpl;

    iget-object v8, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v9, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object v1, p3

    move-wide v2, p4

    move-object/from16 v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/session/PanoCaptureSessionImpl;-><init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V

    return-object v0
.end method

.method public createNewSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 12
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sessionStartTime"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 45
    new-instance v5, Lcom/android/camera/session/TemporarySessionFile;

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mSessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    const-string v1, "TEMP_SESSIONS"

    invoke-direct {v5, v0, v1, p3}, Lcom/android/camera/session/TemporarySessionFile;-><init>(Lcom/android/camera/session/SessionStorageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v5, "temporarySessionFile":Lcom/android/camera/session/TemporarySessionFile;
    new-instance v0, Lcom/android/camera/session/CaptureSessionImpl;

    iget-object v9, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v10, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object v1, p3

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/session/CaptureSessionImpl;-><init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/TemporarySessionFile;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V

    return-object v0
.end method

.method public createNewStreamingSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 10
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "externalUri"    # Landroid/net/Uri;
    .param p5, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p6, "sessionStartMillis"    # J
    .param p8, "location"    # Landroid/location/Location;
    .param p9, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 69
    new-instance v1, Lcom/android/camera/session/VideoStreamingSessionImpl;

    move-object v2, p3

    move-object v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/session/VideoStreamingSessionImpl;-><init>(Ljava/lang/String;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    return-object v1
.end method

.method public createNewVideoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 12
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "externalUri"    # Landroid/net/Uri;
    .param p5, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p6, "sessionStartMillis"    # J
    .param p8, "location"    # Landroid/location/Location;
    .param p9, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 64
    new-instance v1, Lcom/android/camera/session/VideoRecordSessionImpl;

    iget-object v10, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v11, p0, Lcom/android/camera/session/CaptureSessionFactoryImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object v2, p3

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/camera/session/VideoRecordSessionImpl;-><init>(Ljava/lang/String;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V

    return-object v1
.end method
