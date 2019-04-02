.class public Lcom/android/camera/captureintent/CaptureIntentSessionFactory;
.super Ljava/lang/Object;
.source "CaptureIntentSessionFactory.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionFactory;


# instance fields
.field private final mMediaSaver:Lcom/android/camera/app/MediaSaver;

.field private final mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/MediaSaver;Lcom/android/camera/session/PlaceholderManager;)V
    .locals 0
    .param p1, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;
    .param p2, "placeholderManager"    # Lcom/android/camera/session/PlaceholderManager;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentSessionFactory;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 36
    iput-object p2, p0, Lcom/android/camera/captureintent/CaptureIntentSessionFactory;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 37
    return-void
.end method


# virtual methods
.method public createNewBurstSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 6
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sessionStartMillis"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/captureintent/CaptureIntentSession;

    move-object v1, p3

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/captureintent/CaptureIntentSession;-><init>(Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    return-object v0
.end method

.method public createNewMicroVideoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sessionStartMillis"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "previewDataRenderFactory"    # Lcom/android/camera/opengl/capturedata/PreviewDataRenderFactory;
    .param p8, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public createNewPanoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 6
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sessionStartMillis"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/captureintent/CaptureIntentSession;

    move-object v1, p3

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/captureintent/CaptureIntentSession;-><init>(Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    return-object v0
.end method

.method public createNewSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 6
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "sessionStartTime"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 43
    new-instance v0, Lcom/android/camera/captureintent/CaptureIntentSession;

    move-object v1, p3

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/captureintent/CaptureIntentSession;-><init>(Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    return-object v0
.end method

.method public createNewStreamingSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "externalUri"    # Landroid/net/Uri;
    .param p5, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p6, "sessionStartMillis"    # J
    .param p8, "location"    # Landroid/location/Location;
    .param p9, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public createNewVideoSession(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;
    .locals 14
    .param p1, "sessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p2, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "externalUri"    # Landroid/net/Uri;
    .param p5, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p6, "sessionStartMillis"    # J
    .param p8, "location"    # Landroid/location/Location;
    .param p9, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 58
    new-instance v1, Lcom/android/camera/captureintent/VideoIntentSession;

    iget-object v11, p0, Lcom/android/camera/captureintent/CaptureIntentSessionFactory;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v12, p0, Lcom/android/camera/captureintent/CaptureIntentSessionFactory;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p8

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/camera/captureintent/VideoIntentSession;-><init>(Ljava/lang/String;Landroid/media/CamcorderProfile;JLandroid/net/Uri;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V

    return-object v1
.end method
