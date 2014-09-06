.class public Lcom/sonymobile/cameracommon/gltextureview/EGLController;
.super Ljava/lang/Object;
.source "EGLController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/gltextureview/EGLController$1;,
        Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private final mEglLock:Ljava/lang/Object;

.field private mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

.field private mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEglLock:Ljava/lang/Object;

    .line 26
    iput-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 61
    iput-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    .line 64
    iput-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    .line 69
    return-void
.end method

.method private isUiThread()Z
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 6

    .prologue
    .line 269
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEglLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 285
    :goto_0
    monitor-exit v1

    .line 286
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 247
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEglLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 253
    monitor-exit v1

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public initialize(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)V
    .locals 1
    .param p1, "chooser"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;
    .param p2, "version"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .prologue
    .line 74
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->initialize(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 75
    return-void
.end method

.method public initialize(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 7
    .param p1, "chooser"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;
    .param p2, "version"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;
    .param p3, "eglContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 89
    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEglLock:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "EGL already initialized."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 95
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 98
    new-instance v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;-><init>(Lcom/sonymobile/cameracommon/gltextureview/EGLController$1;)V

    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    .line 99
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iput-object v4, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 100
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v5, 0x305a

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 101
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v5, 0x3059

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 102
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 105
    new-instance v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;-><init>(Lcom/sonymobile/cameracommon/gltextureview/EGLController$1;)V

    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    .line 106
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iput-object v4, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 107
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v4, :cond_1

    .line 108
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "EGL_NO_DISPLAY"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 111
    .local v1, "versionMajorMinor":[I
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Failed to eglInitialize()"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {p1, v4, v5, p2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    iput-object v4, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 120
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_3

    .line 121
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Failed to chooseConfig()"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_3
    const/4 v0, 0x0

    .line 126
    .local v0, "contextAttributes":[I
    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$OpenGLVersion:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 138
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v6, v6, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v4, v5, v6, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 143
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v4, :cond_4

    .line 144
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Failed to eglCreateContext()"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :pswitch_1
    const/4 v2, 0x3

    new-array v0, v2, [I

    .end local v0    # "contextAttributes":[I
    fill-array-data v0, :array_0

    .restart local v0    # "contextAttributes":[I
    goto :goto_0

    .line 146
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    return-void

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 132
    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->isValid()Z

    move-result v0

    return v0
.end method

.method public onDrawFrameFinished()Z
    .locals 4

    .prologue
    .line 294
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEglLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 157
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEglLock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v1, v1, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 169
    .local v0, "surface":Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to eglCreateWindowSurface()"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "surface":Ljavax/microedition/khronos/egl/EGLSurface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 172
    .restart local v0    # "surface":Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iput-object v0, v1, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 173
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    return-void
.end method

.method public onSurfaceTextureChanged(Landroid/view/Surface;)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 177
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEglLock:Ljava/lang/Object;

    monitor-enter v2

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v1, v1, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 189
    .local v0, "eglSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iput-object v0, v1, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 190
    monitor-exit v2

    .line 191
    return-void

    .line 190
    .end local v0    # "eglSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 6

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEglLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 212
    monitor-exit v1

    .line 241
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 222
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->eglDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->release()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mThisEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    .line 234
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;->release()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mSystemEglRes:Lcom/sonymobile/cameracommon/gltextureview/EGLController$EGLResources;

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 238
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
