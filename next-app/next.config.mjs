/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      // Google User Account Image.
      {
        protocol: 'https',
        hostname: 'lh3.googleusercontent.com',
      },
      // GitHub User Account Image.
      {
        protocol: 'https',
        hostname: 'avatars.githubusercontent.com',
      },
    ],
  },
};

export default nextConfig;
